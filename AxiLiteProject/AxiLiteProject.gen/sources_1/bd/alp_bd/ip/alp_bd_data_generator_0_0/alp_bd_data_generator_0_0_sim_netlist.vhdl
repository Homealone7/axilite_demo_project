-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Oct 26 15:05:21 2024
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/AxiLiteProject/AxiLiteProject.gen/sources_1/bd/alp_bd/ip/alp_bd_data_generator_0_0/alp_bd_data_generator_0_0_sim_netlist.vhdl
-- Design      : alp_bd_data_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alp_bd_data_generator_0_0_data_generator is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of alp_bd_data_generator_0_0_data_generator : entity is "data_generator";
end alp_bd_data_generator_0_0_data_generator;

architecture STRUCTURE of alp_bd_data_generator_0_0_data_generator is
  signal cycle_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cycle_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_counter[6]_i_4_n_0\ : STD_LOGIC;
  signal cycle_counter_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \data_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \data_counter_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \data_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_3_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_4_n_0 : STD_LOGIC;
  signal state_inv_i_1_n_0 : STD_LOGIC;
  signal state_reg_inv_n_0 : STD_LOGIC;
  signal \NLW_data_counter_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cycle_counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cycle_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cycle_counter[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cycle_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cycle_counter[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cycle_counter[6]_i_4\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_counter_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[31]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_counter_reg[7]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of m_axis_tvalid_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_4 : label is "soft_lutpair2";
  attribute inverted : string;
  attribute inverted of state_reg_inv : label is "yes";
begin
  m_axis_tdata(31 downto 0) <= \^m_axis_tdata\(31 downto 0);
  m_axis_tlast <= \^m_axis_tlast\;
\cycle_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_counter(0),
      O => cycle_counter_0(0)
    );
\cycle_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cycle_counter(0),
      I1 => cycle_counter(1),
      O => cycle_counter_0(1)
    );
\cycle_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cycle_counter(1),
      I1 => cycle_counter(0),
      I2 => cycle_counter(2),
      O => cycle_counter_0(2)
    );
\cycle_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000BF"
    )
        port map (
      I0 => m_axis_tvalid_i_4_n_0,
      I1 => cycle_counter(6),
      I2 => cycle_counter(5),
      I3 => \cycle_counter[3]_i_2_n_0\,
      I4 => cycle_counter(3),
      O => cycle_counter_0(3)
    );
\cycle_counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cycle_counter(1),
      I1 => cycle_counter(0),
      I2 => cycle_counter(2),
      O => \cycle_counter[3]_i_2_n_0\
    );
\cycle_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cycle_counter(3),
      I1 => cycle_counter(1),
      I2 => cycle_counter(0),
      I3 => cycle_counter(2),
      I4 => cycle_counter(4),
      O => cycle_counter_0(4)
    );
\cycle_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0FFF0F1F0"
    )
        port map (
      I0 => cycle_counter(6),
      I1 => cycle_counter(3),
      I2 => \cycle_counter[5]_i_2_n_0\,
      I3 => cycle_counter(5),
      I4 => \cycle_counter[6]_i_3_n_0\,
      I5 => \cycle_counter[6]_i_4_n_0\,
      O => cycle_counter_0(5)
    );
\cycle_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => cycle_counter(5),
      I1 => cycle_counter(4),
      I2 => cycle_counter(3),
      I3 => cycle_counter(1),
      I4 => cycle_counter(0),
      I5 => cycle_counter(2),
      O => \cycle_counter[5]_i_2_n_0\
    );
\cycle_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF08FF085508"
    )
        port map (
      I0 => cycle_counter(5),
      I1 => cycle_counter(4),
      I2 => \cycle_counter[6]_i_2_n_0\,
      I3 => cycle_counter(6),
      I4 => \cycle_counter[6]_i_3_n_0\,
      I5 => \cycle_counter[6]_i_4_n_0\,
      O => cycle_counter_0(6)
    );
\cycle_counter[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cycle_counter(2),
      I1 => cycle_counter(0),
      I2 => cycle_counter(1),
      I3 => cycle_counter(3),
      O => \cycle_counter[6]_i_2_n_0\
    );
\cycle_counter[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15FFFFFFFFFFFFFF"
    )
        port map (
      I0 => cycle_counter(3),
      I1 => cycle_counter(7),
      I2 => cycle_counter(8),
      I3 => cycle_counter(2),
      I4 => cycle_counter(0),
      I5 => cycle_counter(1),
      O => \cycle_counter[6]_i_3_n_0\
    );
\cycle_counter[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => cycle_counter(3),
      I1 => cycle_counter(4),
      I2 => cycle_counter(9),
      O => \cycle_counter[6]_i_4_n_0\
    );
\cycle_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3CCCCCCCCC4CC"
    )
        port map (
      I0 => cycle_counter(8),
      I1 => cycle_counter(7),
      I2 => m_axis_tvalid_i_3_n_0,
      I3 => cycle_counter(9),
      I4 => cycle_counter(4),
      I5 => cycle_counter(3),
      O => cycle_counter_0(7)
    );
\cycle_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C6C6CCCCCCCCC4CC"
    )
        port map (
      I0 => cycle_counter(7),
      I1 => cycle_counter(8),
      I2 => m_axis_tvalid_i_3_n_0,
      I3 => cycle_counter(9),
      I4 => cycle_counter(4),
      I5 => cycle_counter(3),
      O => cycle_counter_0(8)
    );
\cycle_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F068F0F0F0"
    )
        port map (
      I0 => cycle_counter(3),
      I1 => cycle_counter(4),
      I2 => cycle_counter(9),
      I3 => cycle_counter(7),
      I4 => cycle_counter(8),
      I5 => m_axis_tvalid_i_3_n_0,
      O => cycle_counter_0(9)
    );
\cycle_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(0),
      Q => cycle_counter(0)
    );
\cycle_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(1),
      Q => cycle_counter(1)
    );
\cycle_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(2),
      Q => cycle_counter(2)
    );
\cycle_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(3),
      Q => cycle_counter(3)
    );
\cycle_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(4),
      Q => cycle_counter(4)
    );
\cycle_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(5),
      Q => cycle_counter(5)
    );
\cycle_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(6),
      Q => cycle_counter(6)
    );
\cycle_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(7),
      Q => cycle_counter(7)
    );
\cycle_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(8),
      Q => cycle_counter(8)
    );
\cycle_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => state_reg_inv_n_0,
      CLR => m_axis_tvalid_i_2_n_0,
      D => cycle_counter_0(9),
      Q => cycle_counter(9)
    );
\data_counter[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_reg_inv_n_0,
      I1 => m_axis_tready,
      O => \data_counter[31]_i_1_n_0\
    );
\data_counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      O => \data_counter[3]_i_2_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      D => \data_counter_reg[3]_i_1_n_7\,
      PRE => m_axis_tvalid_i_2_n_0,
      Q => \^m_axis_tdata\(0)
    );
\data_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[11]_i_1_n_5\,
      Q => \^m_axis_tdata\(10)
    );
\data_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[11]_i_1_n_4\,
      Q => \^m_axis_tdata\(11)
    );
\data_counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[7]_i_1_n_0\,
      CO(3) => \data_counter_reg[11]_i_1_n_0\,
      CO(2) => \data_counter_reg[11]_i_1_n_1\,
      CO(1) => \data_counter_reg[11]_i_1_n_2\,
      CO(0) => \data_counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[11]_i_1_n_4\,
      O(2) => \data_counter_reg[11]_i_1_n_5\,
      O(1) => \data_counter_reg[11]_i_1_n_6\,
      O(0) => \data_counter_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(11 downto 8)
    );
\data_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[15]_i_1_n_7\,
      Q => \^m_axis_tdata\(12)
    );
\data_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[15]_i_1_n_6\,
      Q => \^m_axis_tdata\(13)
    );
\data_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[15]_i_1_n_5\,
      Q => \^m_axis_tdata\(14)
    );
\data_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[15]_i_1_n_4\,
      Q => \^m_axis_tdata\(15)
    );
\data_counter_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[11]_i_1_n_0\,
      CO(3) => \data_counter_reg[15]_i_1_n_0\,
      CO(2) => \data_counter_reg[15]_i_1_n_1\,
      CO(1) => \data_counter_reg[15]_i_1_n_2\,
      CO(0) => \data_counter_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[15]_i_1_n_4\,
      O(2) => \data_counter_reg[15]_i_1_n_5\,
      O(1) => \data_counter_reg[15]_i_1_n_6\,
      O(0) => \data_counter_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(15 downto 12)
    );
\data_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[19]_i_1_n_7\,
      Q => \^m_axis_tdata\(16)
    );
\data_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[19]_i_1_n_6\,
      Q => \^m_axis_tdata\(17)
    );
\data_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[19]_i_1_n_5\,
      Q => \^m_axis_tdata\(18)
    );
\data_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[19]_i_1_n_4\,
      Q => \^m_axis_tdata\(19)
    );
\data_counter_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[15]_i_1_n_0\,
      CO(3) => \data_counter_reg[19]_i_1_n_0\,
      CO(2) => \data_counter_reg[19]_i_1_n_1\,
      CO(1) => \data_counter_reg[19]_i_1_n_2\,
      CO(0) => \data_counter_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[19]_i_1_n_4\,
      O(2) => \data_counter_reg[19]_i_1_n_5\,
      O(1) => \data_counter_reg[19]_i_1_n_6\,
      O(0) => \data_counter_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(19 downto 16)
    );
\data_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[3]_i_1_n_6\,
      Q => \^m_axis_tdata\(1)
    );
\data_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[23]_i_1_n_7\,
      Q => \^m_axis_tdata\(20)
    );
\data_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[23]_i_1_n_6\,
      Q => \^m_axis_tdata\(21)
    );
\data_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[23]_i_1_n_5\,
      Q => \^m_axis_tdata\(22)
    );
\data_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[23]_i_1_n_4\,
      Q => \^m_axis_tdata\(23)
    );
\data_counter_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[19]_i_1_n_0\,
      CO(3) => \data_counter_reg[23]_i_1_n_0\,
      CO(2) => \data_counter_reg[23]_i_1_n_1\,
      CO(1) => \data_counter_reg[23]_i_1_n_2\,
      CO(0) => \data_counter_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[23]_i_1_n_4\,
      O(2) => \data_counter_reg[23]_i_1_n_5\,
      O(1) => \data_counter_reg[23]_i_1_n_6\,
      O(0) => \data_counter_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(23 downto 20)
    );
\data_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[27]_i_1_n_7\,
      Q => \^m_axis_tdata\(24)
    );
\data_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[27]_i_1_n_6\,
      Q => \^m_axis_tdata\(25)
    );
\data_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[27]_i_1_n_5\,
      Q => \^m_axis_tdata\(26)
    );
\data_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[27]_i_1_n_4\,
      Q => \^m_axis_tdata\(27)
    );
\data_counter_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[23]_i_1_n_0\,
      CO(3) => \data_counter_reg[27]_i_1_n_0\,
      CO(2) => \data_counter_reg[27]_i_1_n_1\,
      CO(1) => \data_counter_reg[27]_i_1_n_2\,
      CO(0) => \data_counter_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[27]_i_1_n_4\,
      O(2) => \data_counter_reg[27]_i_1_n_5\,
      O(1) => \data_counter_reg[27]_i_1_n_6\,
      O(0) => \data_counter_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(27 downto 24)
    );
\data_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[31]_i_2_n_7\,
      Q => \^m_axis_tdata\(28)
    );
\data_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[31]_i_2_n_6\,
      Q => \^m_axis_tdata\(29)
    );
\data_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[3]_i_1_n_5\,
      Q => \^m_axis_tdata\(2)
    );
\data_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[31]_i_2_n_5\,
      Q => \^m_axis_tdata\(30)
    );
\data_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[31]_i_2_n_4\,
      Q => \^m_axis_tdata\(31)
    );
\data_counter_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[27]_i_1_n_0\,
      CO(3) => \NLW_data_counter_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \data_counter_reg[31]_i_2_n_1\,
      CO(1) => \data_counter_reg[31]_i_2_n_2\,
      CO(0) => \data_counter_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[31]_i_2_n_4\,
      O(2) => \data_counter_reg[31]_i_2_n_5\,
      O(1) => \data_counter_reg[31]_i_2_n_6\,
      O(0) => \data_counter_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(31 downto 28)
    );
\data_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[3]_i_1_n_4\,
      Q => \^m_axis_tdata\(3)
    );
\data_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_counter_reg[3]_i_1_n_0\,
      CO(2) => \data_counter_reg[3]_i_1_n_1\,
      CO(1) => \data_counter_reg[3]_i_1_n_2\,
      CO(0) => \data_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \data_counter_reg[3]_i_1_n_4\,
      O(2) => \data_counter_reg[3]_i_1_n_5\,
      O(1) => \data_counter_reg[3]_i_1_n_6\,
      O(0) => \data_counter_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^m_axis_tdata\(3 downto 1),
      S(0) => \data_counter[3]_i_2_n_0\
    );
\data_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[7]_i_1_n_7\,
      Q => \^m_axis_tdata\(4)
    );
\data_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[7]_i_1_n_6\,
      Q => \^m_axis_tdata\(5)
    );
\data_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[7]_i_1_n_5\,
      Q => \^m_axis_tdata\(6)
    );
\data_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[7]_i_1_n_4\,
      Q => \^m_axis_tdata\(7)
    );
\data_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_counter_reg[3]_i_1_n_0\,
      CO(3) => \data_counter_reg[7]_i_1_n_0\,
      CO(2) => \data_counter_reg[7]_i_1_n_1\,
      CO(1) => \data_counter_reg[7]_i_1_n_2\,
      CO(0) => \data_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_counter_reg[7]_i_1_n_4\,
      O(2) => \data_counter_reg[7]_i_1_n_5\,
      O(1) => \data_counter_reg[7]_i_1_n_6\,
      O(0) => \data_counter_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^m_axis_tdata\(7 downto 4)
    );
\data_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[11]_i_1_n_7\,
      Q => \^m_axis_tdata\(8)
    );
\data_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_counter[31]_i_1_n_0\,
      CLR => m_axis_tvalid_i_2_n_0,
      D => \data_counter_reg[11]_i_1_n_6\,
      Q => \^m_axis_tdata\(9)
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF5500000300"
    )
        port map (
      I0 => m_axis_tready,
      I1 => m_axis_tvalid_i_3_n_0,
      I2 => cycle_counter(3),
      I3 => state_reg_inv_n_0,
      I4 => m_axis_tvalid_i_4_n_0,
      I5 => \^m_axis_tlast\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cycle_counter(6),
      I1 => cycle_counter(5),
      I2 => cycle_counter(2),
      I3 => cycle_counter(0),
      I4 => cycle_counter(1),
      O => m_axis_tvalid_i_3_n_0
    );
m_axis_tvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => cycle_counter(8),
      I1 => cycle_counter(7),
      I2 => cycle_counter(9),
      I3 => cycle_counter(4),
      O => m_axis_tvalid_i_4_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => m_axis_tvalid_i_2_n_0,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tlast\
    );
state_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAFCAA"
    )
        port map (
      I0 => m_axis_tready,
      I1 => m_axis_tvalid_i_3_n_0,
      I2 => cycle_counter(3),
      I3 => state_reg_inv_n_0,
      I4 => m_axis_tvalid_i_4_n_0,
      O => state_inv_i_1_n_0
    );
state_reg_inv: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => state_inv_i_1_n_0,
      PRE => m_axis_tvalid_i_2_n_0,
      Q => state_reg_inv_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alp_bd_data_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of alp_bd_data_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of alp_bd_data_generator_0_0 : entity is "alp_bd_data_generator_0_0,data_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of alp_bd_data_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of alp_bd_data_generator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of alp_bd_data_generator_0_0 : entity is "data_generator,Vivado 2023.1";
end alp_bd_data_generator_0_0;

architecture STRUCTURE of alp_bd_data_generator_0_0 is
  signal \^m_axis_tlast\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN alp_bd_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tlast\;
inst: entity work.alp_bd_data_generator_0_0_data_generator
     port map (
      clk => clk,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => m_axis_tready,
      rst_n => rst_n
    );
end STRUCTURE;
