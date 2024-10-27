-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Oct 26 23:50:08 2024
-- Host        : DESKTOP-32F9FGL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/DAVIS/Research/Demo/AxiLiteProject/AxiLiteProject.gen/sources_1/bd/alp_bd/ip/alp_bd_myip_adp_s_1_0/alp_bd_myip_adp_s_1_0_sim_netlist.vhdl
-- Design      : alp_bd_myip_adp_s_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI is
  port (
    data_ready_reg_0 : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s_fifo_axis_tready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s_fifo_axis_tvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_fifo_axis_aclk : in STD_LOGIC;
    s_fifo_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI : entity is "myip_adp_s_v1_0_S00_AXI";
end alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI;

architecture STRUCTURE of alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rvalid0__0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal \^data_ready_reg_0\ : STD_LOGIC;
  signal fifo_axis_tready_i_1_n_0 : STD_LOGIC;
  signal fifo_data_buffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  data_ready_reg_0 <= \^data_ready_reg_0\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rresp(0) <= \^s00_axi_rresp\(0);
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => \^data_ready_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => s00_axi_aresetn,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(0),
      Q => s00_axi_rdata(0),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(10),
      Q => s00_axi_rdata(10),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(11),
      Q => s00_axi_rdata(11),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(12),
      Q => s00_axi_rdata(12),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(13),
      Q => s00_axi_rdata(13),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(14),
      Q => s00_axi_rdata(14),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(15),
      Q => s00_axi_rdata(15),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(16),
      Q => s00_axi_rdata(16),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(17),
      Q => s00_axi_rdata(17),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(18),
      Q => s00_axi_rdata(18),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(19),
      Q => s00_axi_rdata(19),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(1),
      Q => s00_axi_rdata(1),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(20),
      Q => s00_axi_rdata(20),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(21),
      Q => s00_axi_rdata(21),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(22),
      Q => s00_axi_rdata(22),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(23),
      Q => s00_axi_rdata(23),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(24),
      Q => s00_axi_rdata(24),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(25),
      Q => s00_axi_rdata(25),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(26),
      Q => s00_axi_rdata(26),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(27),
      Q => s00_axi_rdata(27),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(28),
      Q => s00_axi_rdata(28),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(29),
      Q => s00_axi_rdata(29),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(2),
      Q => s00_axi_rdata(2),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(30),
      Q => s00_axi_rdata(30),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(31),
      Q => s00_axi_rdata(31),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(3),
      Q => s00_axi_rdata(3),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(4),
      Q => s00_axi_rdata(4),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(5),
      Q => s00_axi_rdata(5),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(6),
      Q => s00_axi_rdata(6),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(7),
      Q => s00_axi_rdata(7),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(8),
      Q => s00_axi_rdata(8),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rvalid0__0\,
      D => fifo_data_buffer(9),
      Q => s00_axi_rdata(9),
      R => \axi_rdata[31]_i_1_n_0\
    );
\axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808888888C88888"
    )
        port map (
      I0 => \^s00_axi_rresp\(0),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_arvalid,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^s_axi_arready\,
      I5 => \^data_ready_reg_0\,
      O => \axi_rresp[1]_i_1_n_0\
    );
\axi_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rresp[1]_i_1_n_0\,
      Q => \^s00_axi_rresp\(0),
      R => '0'
    );
axi_rvalid0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      O => \axi_rvalid0__0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
data_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \^data_ready_reg_0\,
      I1 => s_fifo_axis_tvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      O => data_ready_i_1_n_0
    );
data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => '1',
      D => data_ready_i_1_n_0,
      Q => \^data_ready_reg_0\,
      R => '0'
    );
fifo_axis_tready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_fifo_axis_tvalid,
      I1 => \^data_ready_reg_0\,
      O => fifo_axis_tready_i_1_n_0
    );
fifo_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => '1',
      D => fifo_axis_tready_i_1_n_0,
      Q => s_fifo_axis_tready,
      R => '0'
    );
\fifo_data_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(0),
      Q => fifo_data_buffer(0),
      R => '0'
    );
\fifo_data_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(10),
      Q => fifo_data_buffer(10),
      R => '0'
    );
\fifo_data_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(11),
      Q => fifo_data_buffer(11),
      R => '0'
    );
\fifo_data_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(12),
      Q => fifo_data_buffer(12),
      R => '0'
    );
\fifo_data_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(13),
      Q => fifo_data_buffer(13),
      R => '0'
    );
\fifo_data_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(14),
      Q => fifo_data_buffer(14),
      R => '0'
    );
\fifo_data_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(15),
      Q => fifo_data_buffer(15),
      R => '0'
    );
\fifo_data_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(16),
      Q => fifo_data_buffer(16),
      R => '0'
    );
\fifo_data_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(17),
      Q => fifo_data_buffer(17),
      R => '0'
    );
\fifo_data_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(18),
      Q => fifo_data_buffer(18),
      R => '0'
    );
\fifo_data_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(19),
      Q => fifo_data_buffer(19),
      R => '0'
    );
\fifo_data_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(1),
      Q => fifo_data_buffer(1),
      R => '0'
    );
\fifo_data_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(20),
      Q => fifo_data_buffer(20),
      R => '0'
    );
\fifo_data_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(21),
      Q => fifo_data_buffer(21),
      R => '0'
    );
\fifo_data_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(22),
      Q => fifo_data_buffer(22),
      R => '0'
    );
\fifo_data_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(23),
      Q => fifo_data_buffer(23),
      R => '0'
    );
\fifo_data_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(24),
      Q => fifo_data_buffer(24),
      R => '0'
    );
\fifo_data_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(25),
      Q => fifo_data_buffer(25),
      R => '0'
    );
\fifo_data_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(26),
      Q => fifo_data_buffer(26),
      R => '0'
    );
\fifo_data_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(27),
      Q => fifo_data_buffer(27),
      R => '0'
    );
\fifo_data_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(28),
      Q => fifo_data_buffer(28),
      R => '0'
    );
\fifo_data_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(29),
      Q => fifo_data_buffer(29),
      R => '0'
    );
\fifo_data_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(2),
      Q => fifo_data_buffer(2),
      R => '0'
    );
\fifo_data_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(30),
      Q => fifo_data_buffer(30),
      R => '0'
    );
\fifo_data_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(31),
      Q => fifo_data_buffer(31),
      R => '0'
    );
\fifo_data_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(3),
      Q => fifo_data_buffer(3),
      R => '0'
    );
\fifo_data_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(4),
      Q => fifo_data_buffer(4),
      R => '0'
    );
\fifo_data_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(5),
      Q => fifo_data_buffer(5),
      R => '0'
    );
\fifo_data_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(6),
      Q => fifo_data_buffer(6),
      R => '0'
    );
\fifo_data_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(7),
      Q => fifo_data_buffer(7),
      R => '0'
    );
\fifo_data_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(8),
      Q => fifo_data_buffer(8),
      R => '0'
    );
\fifo_data_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_fifo_axis_aclk,
      CE => fifo_axis_tready_i_1_n_0,
      D => s_fifo_axis_tdata(9),
      Q => fifo_data_buffer(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0 is
  port (
    data_ready_reg : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s_fifo_axis_tready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s_fifo_axis_tvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s_fifo_axis_aclk : in STD_LOGIC;
    s_fifo_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0 : entity is "myip_adp_s_v1_0";
end alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0;

architecture STRUCTURE of alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0 is
begin
myip_adp_s_v1_0_S00_AXI_inst: entity work.alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      data_ready_reg_0 => data_ready_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(0) => s00_axi_rresp(0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      s_fifo_axis_aclk => s_fifo_axis_aclk,
      s_fifo_axis_tdata(31 downto 0) => s_fifo_axis_tdata(31 downto 0),
      s_fifo_axis_tready => s_fifo_axis_tready,
      s_fifo_axis_tvalid => s_fifo_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alp_bd_myip_adp_s_1_0 is
  port (
    s_fifo_axis_aclk : in STD_LOGIC;
    s_fifo_axis_aresetn : in STD_LOGIC;
    s_fifo_axis_tvalid : in STD_LOGIC;
    s_fifo_axis_tready : out STD_LOGIC;
    s_fifo_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_fifo_axis_tlast : in STD_LOGIC;
    irq_data_ready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of alp_bd_myip_adp_s_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of alp_bd_myip_adp_s_1_0 : entity is "alp_bd_myip_adp_s_1_0,myip_adp_s_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of alp_bd_myip_adp_s_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of alp_bd_myip_adp_s_1_0 : entity is "myip_adp_s_v1_0,Vivado 2023.1";
end alp_bd_myip_adp_s_1_0;

architecture STRUCTURE of alp_bd_myip_adp_s_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s00_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s_fifo_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_fifo_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_fifo_axis_aclk : signal is "XIL_INTERFACENAME s_fifo_axis_aclk, ASSOCIATED_RESET s_fifo_axis_aresetn, ASSOCIATED_BUSIF S_FIFO_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_fifo_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s_fifo_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_fifo_axis_aresetn : signal is "XIL_INTERFACENAME s_fifo_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_fifo_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of s_fifo_axis_tlast : signal is "XIL_INTERFACENAME S_FIFO_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN alp_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_fifo_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_fifo_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_fifo_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_FIFO_AXIS TDATA";
begin
  s00_axi_bresp(1) <= \<const1>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \^s00_axi_rresp\(1);
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.alp_bd_myip_adp_s_1_0_myip_adp_s_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      axi_rvalid_reg => s00_axi_rvalid,
      data_ready_reg => irq_data_ready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(0) => \^s00_axi_rresp\(1),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      s_fifo_axis_aclk => s_fifo_axis_aclk,
      s_fifo_axis_tdata(31 downto 0) => s_fifo_axis_tdata(31 downto 0),
      s_fifo_axis_tready => s_fifo_axis_tready,
      s_fifo_axis_tvalid => s_fifo_axis_tvalid
    );
end STRUCTURE;
