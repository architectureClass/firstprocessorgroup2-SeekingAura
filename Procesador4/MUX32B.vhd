library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUXB is
    Port ( crS2 : in  STD_LOGIC_VECTOR (31 downto 0);
           imm13 : in  STD_LOGIC_VECTOR (31 downto 0);
           iSc : in  STD_LOGIC;
           value : out  STD_LOGIC_VECTOR (31 downto 0));
end MUXB;

architecture arq_MUXB of MUXB is
signal output : std_logic_vector (31 downto 0):= x"00000000";
begin
	process(crS2, imm13, iSc) begin
		if(isc='0') then
			value <= crS2;
		elsif(isc='1') then
			value <= imm13;
		end if;
	end process;
--value <= output;
end arq_MUXB;

