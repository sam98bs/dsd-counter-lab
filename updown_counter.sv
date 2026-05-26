module updown_counter(

    input logic clk,
    input logic rst_n,
    input logic load,
    input logic up_down,
    input logic enable,
    input logic [3:0] d_in,
    output logic [3:0] count

);

always_ff @(posedge clk or negedge rst_n)
begin

    
    if(!rst_n)
        count <= 4'b0000;

    
    else if(load)
        count <= d_in;

    
    else if(enable)
    begin

        
        if(up_down)
            count <= count + 1;

       
        else
            count <= count - 1;

    end

end

endmodule
