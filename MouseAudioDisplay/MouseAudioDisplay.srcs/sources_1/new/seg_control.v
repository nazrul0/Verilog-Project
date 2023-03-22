`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:32:17
// Design Name: 
// Module Name: seg_control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seg_control(
    input clock,
    input [11:0] peak_intensity,
    input [15:0] sw,
    output reg [3:0] an,
    output reg [6:0] seg
    );
    
    wire clk20K;
    unit_clk_20KHz my_20KHz_clk(clock, clk20K);
    
    wire clk1K;
    custom_clk my_1KHz_clk(clock, 49999, clk1K);
    
    reg [3:0] an_selector = 0;
    always @ (posedge clk1K)
    begin
        an_selector <= (an_selector == 3) ? 0 : an_selector + 1;
    end
    
    always @ (posedge clk20K)
    begin
    
    if (peak_intensity <= 4096 && peak_intensity > 3869)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1100111;
            end
                                   
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0110000;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b1110110;
            end
        end
            
    else if (peak_intensity <= 3869 && peak_intensity > 3642)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1111111;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0110000;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b1110110;
            end            
        end
            
    else if (peak_intensity <= 3642 && peak_intensity > 3415)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b0000111;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0110000;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b1110110;
            end            
        end
            
    else if (peak_intensity <= 3415 && peak_intensity > 3188)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1111101;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b1111001;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0010101;
            end            
        end
            
    else if (peak_intensity <= 3188 && peak_intensity > 2961)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1101101;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b1111001;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0010101;
            end                
        end
            
    else if (peak_intensity <= 2961 && peak_intensity > 2734)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1100110;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b1111001;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0010101;
            end               
        end
            
    else if (peak_intensity <= 2734 && peak_intensity > 2507)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1001111;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0111111;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0111000;
            end           
        end
            
    else if (peak_intensity <= 2507 && peak_intensity > 2280)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b1011011;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0111111;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0111000;
            end            
        end
            
    else if (peak_intensity <= 2280 && peak_intensity > 2053)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b0000110;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0111111;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0111000;
            end            
        end
                
    else if (peak_intensity <= 2053)
        begin
            if (an_selector == 0)
            begin
            an[3:0] <= ~4'b0001;
            seg[6:0] <= ~7'b0111111;
            end
            
            else if (an_selector == 2)
            begin
            an[3:0] <= ~4'b0100;
            seg[6:0] <= ~7'b0111111;
            end
            
            else if (an_selector == 3)
            begin
            an[3:0] <= ~4'b1000;
            seg[6:0] <= ~7'b0111000;
            end            
        end
    
    end
    
endmodule
