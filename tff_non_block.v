module tff_non_block(clk,rst,T,Tout);
    input clk,rst,T;
    output reg Tout;
    
    always@(posedge clk) 
      begin
         if(rst)
            Tout <= 1'b0;
         else if(T)
            Tout <= ~Tout;
         else
            Tout <= Tout;
   end
endmodule
