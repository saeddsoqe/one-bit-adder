library ieee;
use ieee.std_logic_1164.all;
------------------------------------
-- one bit adder 
------------------------------------

entity fulladder is 
port (
-- first input terminal 
input1 : in std_logic;
-- second input terminal 
input2 : in std_logic;
-- carrier input of previous state 
cin : in std_logic;
-- summation output terminal 
sum    : out std_logic;
-- carrier output terminal 
carrier: out std_logic
);
end fulladder;


architecture behaviour of fulladder is 
-- sig1 for xoring input1 , input2
signal sig1 : std_logic ;
-- sig2 for input1 and input2
signal sig2 : std_logic ;
-- sig3 foe sig1 and cin
signal sig3 : std_logic ; 
begin 
sig1 <= input1 xor input2 ;
sig2 <= input1 and input2 ;
sig3 <= sig1 and cin ;
sum <= input1 xor input2 xor cin ;
carrier <= sig2 or sig3 ;
end behaviour;