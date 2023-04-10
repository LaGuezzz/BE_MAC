library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EthernetController is
    Port ( RBYTEP : out STD_LOGIC;
           RCLEAND : out STD_LOGIC;
           RCVNGP : out STD_LOGIC;
           RDATAO : out STD_LOGIC_VECTOR (7 downto 0);
           RDATAI : in STD_LOGIC_VECTOR (7 downto 0);
           RDONEP : out STD_LOGIC;
           RENABP : in STD_LOGIC;
           RSMATIP : out STD_LOGIC;
           RSTARTP : out STD_LOGIC; 
           CLK : in STD_LOGIC;
           RESETN : in STD_LOGIC;
           TAVAILP : in STD_LOGIC;
           TFINISHP: in STD_LOGIC;
           TREADDP : out STD_LOGIC;
           TRNSMTP : out STD_LOGIC;
           TSOCOLP : out STD_LOGIC;
           TSTARTP: out STD_LOGIC;
           TDONEP : out STD_LOGIC;
           TABORTP : in STD_LOGIC;
           TDATAO : out STD_LOGIC_VECTOR (7 downto 0);
           TDATAI : in STD_LOGIC_VECTOR (7 downto 0)
           );
end EthernetController;

architecture Behavioral of EthernetController is
    
-- enum types for "state machine" architecture
type receive_state_type is (IDLE,CHECK_MAC, RECEIVE_DATA);
  type transmit_state_type is (IDLE, TRANSMIT_SFD_BEGIN, TRANSMIT_EFD, TRANSMIT_ABORT , TRANSMIT_MAC_ADDR_DEST, TRANSMIT_MAC_ADDR_SRC, TRANSMIT_PAYLOAD);
  signal rstate : receive_state_type := IDLE;
  signal tstate : transmit_state_type := IDLE;

--MAC addr of the device
  constant NOADDRI: std_logic_vector(47 downto 0):= x"6c2b59e7c20d";

-- internal signals for collision detection
  signal internal_RCVNGP : std_logic := '0';
  signal internal_TRNSMTP : std_logic := '0';
  signal internal_collision : std_logic := '0';
  
begin
  reception : process(CLK, RESETN)
  variable bit_count: integer range 0 to 7:=0;
  variable byte_count: integer range 0 to 7 := 5;
  begin
    if RESETN = '1' then
      rstate <= IDLE;
      byte_count := 5;
      RBYTEP <= '0';
      RCVNGP <= '0';
      internal_RCVNGP <= '0';
      RDONEP <= '0';
      RCLEAND <= '0';
      RSMATIP <= '0';
      RSTARTP <= '0';
      RDATAO <= x"00";

    elsif rising_edge(CLK) then
      case rstate is
        when IDLE =>
        RDONEP <= '0';
        if RENABP = '1' then
          if bit_count < 7 then
            bit_count := bit_count + 1;
          else
            if RDATAI = b"10101011" then
              rstate <= CHECK_MAC;
              RCVNGP <= '1';
              internal_RCVNGP <= '1';
              RSMATIP <= '0';
              RSTARTP <= '1';
              RCLEAND <= '0';
            end if;
            bit_count := 0;
          end if;
        end if;

          
    when CHECK_MAC =>
            if RENABP = '1' then
                if bit_count = 7 then       
                    if NOADDRI(byte_count*8+7 downto byte_count*8) /= RDATAI(7 downto 0) then
                        rstate <= IDLE;
                        byte_count :=5 ;
                        RCLEAND <= '1';
                        RBYTEP <= '0';
                        RCVNGP <= '0';
                        internal_RCVNGP <= '0';
                        RDONEP <= '0';
                        RCLEAND <= '0';
                        RSMATIP <= '0';
                        RSTARTP <= '0';
                        RDATAO <= x"00";
                    else
                        byte_count := byte_count - 1;
                        bit_count:=0;
                    end if;
                else
                    bit_count:=bit_count+1;
                end if;
                if byte_count = -1 then
                    rstate<=RECEIVE_DATA;
                    RSMATIP<='1';  
                end if;
            else
                rstate <= IDLE;
                byte_count := 5;
            end if;
        
            
        
        when RECEIVE_DATA =>
        if bit_count=7 then
          if RDATAI =b"10101011" and RENABP = '1' then
            rstate <= IDLE;
            byte_count := 5;
            RBYTEP <= '0';
            RCVNGP <= '0';
            internal_RCVNGP <= '0';
            RDONEP <= '1';
            RCLEAND <= '0';
            RSMATIP <= '0';
            RSTARTP <= '0';
            RDATAO <= x"00";
          else 
            RDATAO <= RDATAI;
          end if;
          bit_count:=0;
        else
          bit_count:=bit_count+1;
        end if;
                 
         when others =>
            rstate <= IDLE;
            byte_count := 5;
            RBYTEP <= '0';
            RCVNGP <= '0';
            internal_RCVNGP <= '0';
            RDONEP <= '0';
            RCLEAND <= '0';
            RSMATIP <= '0';
            RSTARTP <= '0';
            RDATAO <= x"00";
             end case;
         end if;
         end process;
  
 transmission : process(CLK, RESETN, TABORTP)
        variable transmitted_bit : integer range 0 to 7 :=0;
        variable transmitted_byte : integer range 0 to 7 :=0;
        
         begin
           if RESETN = '1' or internal_collision='1' then
             TDATAO <= x"00";
             tstate <= IDLE;
             transmitted_byte := 0;
             transmitted_bit := 0;
             TSTARTP <= '0';
             TRNSMTP <= '0';
             internal_TRNSMTP <= '0';
             TDONEP <= '0';
             TSOCOLP <= '0';
           elsif rising_edge(CLK) then
             case tstate is
               when IDLE =>
                 if TABORTP = '1' then
                   tstate <= TRANSMIT_ABORT;
                   transmitted_byte:=0;
                 elsif TAVAILP = '1' and internal_collision='0' then
                   TSTARTP<='1';
                   TRNSMTP<='1';
                   internal_TRNSMTP <= '1';
                   tstate <= TRANSMIT_SFD_BEGIN;
                 end if;
         
               when TRANSMIT_SFD_BEGIN =>
                 TSTARTP <= '0';
                  if TABORTP = '1' then
                   tstate <= TRANSMIT_ABORT;
                   transmitted_byte := 0;
                   transmitted_bit:=0;
                 else
                   if transmitted_bit = 7 then
                     TDATAO<=b"10101011";
                     transmitted_bit := 0;
                     tstate <= TRANSMIT_MAC_ADDR_DEST;
                   else
                     transmitted_bit := transmitted_bit + 1;
                   end if;
                 end if;
         
               when TRANSMIT_MAC_ADDR_DEST =>
                 if TABORTP = '1' then
                   tstate <= TRANSMIT_ABORT;
                   transmitted_byte:=0;
                   transmitted_bit:=0;
                 elsif transmitted_byte <= 5 then
                   if transmitted_bit = 7 then
                     TDATAO <= TDATAI;
                     transmitted_bit := 0;
                     transmitted_byte := transmitted_byte + 1;
                   else
                     transmitted_bit := transmitted_bit + 1;
                   end if;
                 else
                   transmitted_byte := 0;
                   tstate <= TRANSMIT_MAC_ADDR_SRC;
                 end if;
         
               when TRANSMIT_MAC_ADDR_SRC =>
                 if TABORTP = '1' then
                   tstate <= TRANSMIT_ABORT;
                   transmitted_byte:=0;
                   transmitted_bit:=0;
                 elsif transmitted_byte <= 5 then
                   if transmitted_bit = 7 then
                     TDATAO <= NOADDRI((5 - transmitted_byte) * 8 + 7 downto (5 - transmitted_byte) * 8);
                     transmitted_bit := 0;
                     transmitted_byte := transmitted_byte + 1;
                   else
                     transmitted_bit := transmitted_bit + 1;
                   end if;
                 else
                   transmitted_byte := 0;
                   TREADDP <= '1';
                   tstate <= TRANSMIT_PAYLOAD;
                 end if;
         
               when TRANSMIT_PAYLOAD =>
                 TREADDP <= '0';
                 if TABORTP = '1' then
                   tstate <= TRANSMIT_ABORT;
                   transmitted_byte:=0;
                   transmitted_bit:=0;
                 elsif TFINISHP = '0' then
                   if transmitted_bit = 7 then
                      TDATAO <= TDATAI;
                      transmitted_bit := 0;
                   else
                      transmitted_bit := transmitted_bit + 1;
                   end if;
                 else
                   TDONEP <= '1';
                   tstate <= TRANSMIT_EFD; 
                 end if;
                 
               when TRANSMIT_EFD =>
                   TDONEP <= '0';
                   if TABORTP = '1' then
                     tstate <= TRANSMIT_ABORT;
                     transmitted_byte := 0;
                     transmitted_bit:=0;
                   else
                     TDATAO<=b"10101011";
                     if transmitted_bit = 7 then
                       tstate <= IDLE;
                       TDATAO <= x"00";
                       transmitted_byte := 0;
                       transmitted_bit := 0;
                       TSTARTP <= '0';
                       TRNSMTP <= '0';
                       internal_TRNSMTP <= '0';
                       TDONEP <= '0';
                       TSOCOLP <= '0';
                     else
                       transmitted_bit := transmitted_bit + 1;
                     end if;
                   end if;
           
                 when TRANSMIT_ABORT =>
                   TSOCOLP<='1';
                   if transmitted_byte <= 4 then
                     if transmitted_bit = 7 then
                       TDATAO <= b"10101010";
                       transmitted_bit:=0;
                       transmitted_byte:=transmitted_byte+1;
                     else
                       transmitted_bit:=transmitted_bit+1;
                     end if;
                   else
                     TDATAO <= x"00";
                     tstate <= IDLE;
                     transmitted_byte := 0;
                     transmitted_bit := 0;
                     TSTARTP <= '0';
                     TRNSMTP <= '0';
                     internal_TRNSMTP <= '0';
                     TDONEP <= '0';
                     TSOCOLP <= '0';
                   end if;
           
                 when others =>
                   tstate <= IDLE;
                   transmitted_byte := 0;
                   transmitted_bit := 0;
                   TSTARTP <= '0';
                   TRNSMTP <= '0';
                   internal_TRNSMTP <= '0';
                   TDONEP <= '0';
                   TSOCOLP <= '0';
               end case;
             end if;
           end process;  
                 
    ps_collision : process
               begin
                   wait until (CLK'event and CLK ='1');
                   if ((internal_TRNSMTP='1') and (internal_RCVNGP='1')) then 
                       internal_collision<='1';
                   else
                       internal_collision<='0';

                   end if;
               end process ps_collision;

TSOCOLP<=internal_collision;
       
end Behavioral;

