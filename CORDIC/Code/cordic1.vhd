-- Created on June 6, 2021
-- Reference: https://github.com/kevinpt/vhdl-extras/blob/master/rtl/extras/cordic.vhdl

-- June 08: for loop procedure is done
-- To do: finish up work (multiplication, quadrant conversion, main architecture

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cordic1 is
    Port ( clk      : in STD_LOGIC;
           rst      : in STD_LOGIC;
           angle    : in STD_LOGIC_VECTOR(15 downto 0); -- 0 to 2*pi
           cos      : out STD_LOGIC_VECTOR (16 downto 0);
           sin      : out STD_LOGIC_VECTOR (16 downto 0));
end cordic1;

architecture Behavioral of cordic1 is

-- Registered signals for input and outputs
signal angle_r: unsigned(15 downto 0):=(others => '0');
signal cos_r, sin_r: signed(16 downto 0):=(others => '0');

-- Storing the quadrant of the input angle
signal quad: unsigned(1 downto 0);

-- CORDIC calculation: x, y, and z(angle)
signal x: unsigned(19 downto 0):=(19 => '1', others => '0');
signal y: unsigned(19 downto 0):=(others => '0');
signal z: unsigned(19 downto 0):=(others => '0'); -- 0 to 90 degrees

-- Adjust the input angle to first quadrant by rotating it 90/180/270 degrees counterclockwise
-- The adjusted angle will be stored in a 20-bit variable, ranging from -90 to 90 degrees
-- The actual quadrant of the input angle will be stored
procedure adjust_angle (ang     : in unsigned(15 downto 0);
						q       : out unsigned(1 downto 0);
						adjusted: out signed(19 downto 0)) is
begin
  q :=ang(15 downto 14);
  adjusted := signed('0' & ang(13 downto 0) & "00000");
end procedure;

-- CORDIC loop in rolling method (using for loop)
procedure rolling (xi, yi: in unsigned(19 downto 0);
				   zi    : in signed(19 downto 0)
				   xr, yr: out unsigned(19 downto 0)
				   zr    : out signed(19 downto 0)) is
				   
variable x1, x2, y1, y2: unsigned(19 downto 0);
variable z1, z2: signed(19 downto 0);

--Lookup table of the rotation angles 
type z_array is array(0 to 15) of signed(19 downto 0);
constant inc_angle: z_array := (
	01000000000000000000, -- 45(atan(2^0))
	00100101110010000001, -- atan(2^-1)
	00010011111101100111, -- atan(2^-2)
	00001010001000100010, -- atan(2^-3)
	00000101000101100010, -- atan(2^-4)
	00000010100010111011, -- atan(2^-5)
	00000001010001011111, -- atan(2^-6)
	00000000101000110000, -- atan(2^-7)
	00000000010100011000, -- atan(2^-8)
	00000000001010001100, -- atan(2^-9)
	00000000000101000110, -- atan(2^-10)
	00000000000010100011, -- atan(2^-11)
	00000000000001010001, -- atan(2^-12)
	00000000000000101001, -- atan(2^-13)
	00000000000000010100, -- atan(2^-14)
	00000000000000001010  -- atan(2^-15)
	);

begin
  x1 := xi;
  y1 := yi;
  z1 := zi;
  for i in 0 to 15 loop
	if (z1(19) = 1) then
	  x2 := x1 + shift_right(y1, i);
	  y2 := y1 - shift_right(x1, i);
	  z2 := z1 + inc_angle(i);
	else
	  x2 := x1 - shift_right(y1, i);
	  y2 := y1 + shift_right(x1, i);
	  z2 := z1 - inc_angle(i);
    end if;
	x1 := x2;
	y1 := y2;
	z1 := z2;
  end loop;
  xr := x1;
  yr := y1;
  zr := z1;
end procedure;

begin

-- Register process
reg:process (rst, clk)
  begin 
	if rising_edge(clk) then
	  if (rst = '1') then
	    cos <= "00000000000000000" ;
        sin <= "00000000000000000" ;
	    angle_r <= "0000000000" ;
      else if (angle = "0000000000") then
        cos <= "01000000000000000" ;
        sin <= "00000000000000000" ;
	    angle_r <= "0000000000" ;
	  else
	    cos <= std_logic_vector(cos_r);
		sin <= std_logic_vector(sin_r);
	    angle_r <= unsigned(angle);
	  end if;
	end if; 	   
end process reg;


end Behavioral;