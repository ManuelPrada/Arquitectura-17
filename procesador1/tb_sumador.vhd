--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:15:35 10/02/2017
-- Design Name:   
-- Module Name:   F:/procesador1/tb_sumador.vhd
-- Project Name:  procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_sumador IS
END tb_sumador;
 
ARCHITECTURE behavior OF tb_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador
    PORT(
         EntradaA : IN  std_logic_vector(31 downto 0);
         EntradaB : IN  std_logic_vector(31 downto 0);
         Salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EntradaA : std_logic_vector(31 downto 0) := (others => '0');
   signal EntradaB : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador PORT MAP (
          EntradaA => EntradaA,
          EntradaB => EntradaB,
          Salida => Salida
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
	
	EntradaA <= x"0000001";
	EntradaB <= x"000000A";
	
	 wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
