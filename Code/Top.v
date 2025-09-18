module new_amba #(parameter DATA_WIDTH=32,ADDR_WIDTH=32,SLAVE_NUM=4, HBURST_WIDTH=3)(
	input HRST,
	input HCLK,
	input enable,
	input [1:0]SEL,
	input [DATA_WIDTH-1:0]HWRITE_i,
	input[ADDR_WIDTH-1:0]HADDR_i,
	input [2:0]HSIZE_i,
	input HWRITE_e_i,
    input [HBURST_WIDTH-1:0]HBURST_i,
//output signals
    output  [DATA_WIDTH-1:0]DATA_o,
	 
    output HREADYOUT,
    output RESP_o);
    
    wire HREADY;
    wire HRESP;
    wire HRESP1;
	 wire [1:0]HSEL;
    wire HREADYOUT1;
    wire [DATA_WIDTH-1:0]HRDATA1;
    wire HREQ;
    wire [ADDR_WIDTH-1:0]HADDR_o;
    wire HWRITE_o;
    wire [2:0]HSIZE_o;
    wire [3:0]HPROT;
    wire [1:0]HTRANS;
    wire [HBURST_WIDTH-1:0]HBURST;
    wire HMASTERLOCK;
    wire [DATA_WIDTH-1:0]HRdata_i;
    wire HREADYOUT_m;
    assign HREADYOUT=HREADYOUT_m;
    assign RESP_o=HRESP;
    wire [DATA_WIDTH-1:0]HWDATA_o;
 master dut1 ( HRST,
	 HCLK,
	 HREADYOUT_m,
	 enable,
	 HWRITE_i,
	 HRdata_i,
	 HADDR_i,
	 SEL,
	 HSIZE_i,
	 HRESP,
	 HWRITE_e_i,
     HBURST_i,
//output signals

	 HREADY,
	 HREQ,
	 HADDR_o,
	 HWDATA_o,
	 HSIZE_o,
	 HPROT,
	 HTRANS,
	 HBURST,
	 HMASTERLOCK,
     HWRITE_o,
     DATA_o

	);

 slave slave1( HCLK,
 HRST,
 HSEL_1,
  HADDR_o,
 HWRITE_o,
 HSIZE_o,
 HBURST,
 HPROT,
 HTRANS,
 HMASTERLOCK,
 HREADY,
 HWDATA_o,
 HREADYOUT,
 HRESP,
 HRDATA);


endmodule


