module dff_behavioral(d,clk,clear,q,qbar); 
input d, clk, clear; 
output reg q, qbar; 
always@(posedge clk) 
	begin
		if(clear== 1) begin
			q <= 0;
			qbar <= 1;
		end
		else begin 
			q <= d; 
			qbar <= !d; 
		end
	end 
endmodule
