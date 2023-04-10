----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 11:24:05
-- Design Name: 
-- Module Name: test_reception - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_reception is
--  Port ( );
end test_reception;

architecture Behavioral of test_reception is

component EthernetController is
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
        
end component;



SIGNAL t_RDATAO, t_RDATAI : std_logic_vector(7 downto 0);
SIGNAL CLK : std_logic:='0';
SIGNAL t_RBYTEP : std_logic:='0';
SIGNAL t_RCLEAND : std_logic:='0';
SIGNAL t_RCVNGP : std_logic:='0';
SIGNAL t_RDONEP : std_logic:='0';
SIGNAL t_RENABP : std_logic:='0';
SIGNAL t_RSMATIP : std_logic:='0';
SIGNAL t_RSTARTP : std_logic:='0';
SIGNAL t_RESETN : std_logic:='0';
SIGNAL t_TAVAILP : STD_LOGIC:='0';
SIGNAL t_TFINISHP: STD_LOGIC:='0';
SIGNAL t_TREADDP : STD_LOGIC:='0';
SIGNAL t_TRNSMTP : STD_LOGIC:='0';
SIGNAL t_TSOCOLP : STD_LOGIC:='0';
SIGNAL t_TSTARTP: STD_LOGIC:='0';
SIGNAL t_TDONEP : STD_LOGIC:='0';
SIGNAL t_TABORTP : STD_LOGIC:='0';
SIGNAL t_TDATAO : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL t_TDATAI : STD_LOGIC_VECTOR (7 downto 0);
constant t_CLK : time:=10ns;

begin

ethernet_controller : EthernetController PORT MAP (t_RBYTEP, t_RCLEAND, t_RCVNGP, t_RDATAO, t_RDATAI, t_RDONEP, t_RENABP, t_RSMATIP, t_RSTARTP, CLK, t_RESETN, t_TAVAILP, t_TFINISHP, t_TREADDP, t_TRNSMTP, t_TSOCOLP, t_TSTARTP, t_TDONEP, t_TABORTP, t_TDATAO, t_TDATAI);
CLK<= not CLK after 5ns;

--TEST Reception:

--SFD bon mais mac adresse mauvaise
--t_RENABP<='1';
--t_RDATAI<=x"00",x"AB" after 8*t_CLK, x"AA" after 2*8*t_CLK,x"BB" after 3*8*t_CLK,x"CC" after 4*8*t_CLK,x"DD" after 5*8*t_CLK,x"EE" after 6*8*t_CLK,x"AA" after 7*8*t_CLK,x"AA" after 8*8*t_CLK;

--SFD mauvais
--t_RENABP<='1';
--t_RDATAI<=x"00",x"BB" after 8*t_CLK, x"AA" after 2*8*t_CLK,x"BB" after 3*8*t_CLK,x"CC" after 4*8*t_CLK,x"DD" after 5*8*t_CLK,x"AA" after 6*8*t_CLK,x"AA" after 7*8*t_CLK,x"AA" after 8*8*t_CLK;


--SFD bon et mac adresse specifique et EFD
--t_RENABP<='1';
--t_RDATAI<=x"00",x"AB" after 8*t_CLK, x"6C" after (2*8)*t_CLK,x"2B" after (3*8)*t_CLK,x"59" after (4*8)*t_CLK,x"E7" after (5*8)*t_CLK,x"C2" after (6*8)*t_CLK,x"0D" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK,x"AB" after (9*8)*t_CLK,x"00" after (10*8)*t_CLK;

--TEST Emission:
--Test pour une transmission entière : Fonctionnel
--t_RESETN<='1','0' after t_CLK;
--t_TAVAILP<='1';
--t_TDATAI<=x"FF" after (2*8)*t_CLK,x"FF" after (3*8)*t_CLK,x"FF" after (4*8)*t_CLK,x"FF" after (5*8)*t_CLK,x"FF" after (6*8)*t_CLK,x"FF" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK;
--t_TFINISHP<='1' after 300*t_CLK, '0' after 306*t_CLK;

--TEST 2 : Test de TABORTP : Fonctionnel
--t_RESETN<='1','0' after t_CLK;
--t_TAVAILP<='1';
--t_TDATAI<=x"FF" after (2*8)*t_CLK,x"FF" after (3*8)*t_CLK,x"FF" after (4*8)*t_CLK,x"FF" after (5*8)*t_CLK,x"FF" after (6*8)*t_CLK,x"FF" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK;
--t_TABORTP<='1' after 100*t_CLK,'0' after 101*t_CLK;

--TEST 3 : Test si TRESET au milieu de l'émission : Fonctionnel
--t_RESETN<='1','0' after t_CLK,'1' after 20*t_CLK,'0' after 21*t_CLK;
--t_TAVAILP<='1';
--t_TDATAI<=x"FF" after (2*8)*t_CLK,x"FF" after (3*8)*t_CLK,x"FF" after (4*8)*t_CLK,x"FF" after (5*8)*t_CLK,x"FF" after (6*8)*t_CLK,x"FF" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK;

--TEST COLLISION:
--t_RENABP<='1';
--t_RDATAI<=x"00",x"AB" after 8*t_CLK, x"6C" after (2*8)*t_CLK,x"2B" after (3*8)*t_CLK,x"59" after (4*8)*t_CLK,x"E7" after (5*8)*t_CLK,x"C2" after (6*8)*t_CLK,x"0D" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK,x"AB" after (9*8)*t_CLK,x"00" after (10*8)*t_CLK;

--t_RESETN<='1','0' after t_CLK;
--t_TAVAILP<='1';
--t_TDATAI<=x"FF" after (2*8)*t_CLK,x"FF" after (3*8)*t_CLK,x"FF" after (4*8)*t_CLK,x"FF" after (5*8)*t_CLK,x"FF" after (6*8)*t_CLK,x"FF" after (7*8)*t_CLK,x"AA" after (8*8)*t_CLK;


end;