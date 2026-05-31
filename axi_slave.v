`timescale 1ns / 1ps

module axi_lite_slave(

    input wire s_aclk,
    input wire s_arstn,
    
    // Write Address channel (AW)
    input wire s_awvalid,
    input wire [31:0] s_awaddr,
    output reg s_awready,
    //awprot
    
    // Write Data channel (W)
    input wire s_wvalid,
    input wire [31:0] s_wdata,
    input wire [3:0] wstrb,
    output reg s_wready,
    
    // Write Response channel (B)
    output reg s_bvalid,
    output reg [1:0] s_bresp,
    input wire s_bready,
    
    // Read Address channel (AR)
    input wire [31:0] s_araddr,
    input wire s_arvalid,
    output reg s_arready,
    
    // Read Data channel (R)
    input wire s_rready,
    output reg [31:0] s_rdata,
    output reg [1:0] s_rresp,
    output reg s_rvalid
    );
    
    // register declaration
    reg [31:0] s_reg0;
    reg [31:0] s_reg1;
    reg [31:0] s_reg2;
    reg [31:0] s_reg3;
    
    // registers to latch addresses
    reg [4:0] awaddr_reg;
    reg [4:0] araddr_reg;
    
    always @ (posedge s_aclk) begin
    // reset block
        if (~s_arstn) begin
        
            s_awready   <= 1'b0; 
            s_wready    <= 1'b0;
            s_bvalid    <= 1'b0; 
            s_bresp     <= 2'b0;
            s_arready   <= 1'b0;
            s_rdata     <= 32'b0;
            s_rresp     <= 2'b0;
            s_rvalid    <= 1'b0;
    
            s_reg0      <= 32'b0;
            s_reg1      <= 32'b0;
            s_reg2      <= 32'b0;
            s_reg3      <= 32'b0;
            
            awaddr_reg  <= 32'b0;
            araddr_reg  <= 32'b0;
        
        end
        
        else begin 
             
     
       
            
            
endmodule

