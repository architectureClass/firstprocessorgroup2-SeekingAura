library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;--Libreria para carry
use IEEE.STD_LOGIC_UNSIGNED.ALL;--para que sean todos positivos

entity Adder is
	Port(
		op1 : in  STD_LOGIC_VECTOR (31 downto 0);
		op2 : in  STD_LOGIC_VECTOR (31 downto 0);
		result : out  STD_LOGIC_VECTOR (31 downto 0)
	);
end Adder;

architecture arq_Adder of Adder is
signal resultOut : std_logic_vector (31 downto 0) := x"00000000";
begin
	result <=op1+op2;
end arq_Adder;

