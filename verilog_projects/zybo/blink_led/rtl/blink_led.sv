///////////////////////////////////////////////////////////////////////////
//
//	Project          : Blinking LED
//	File Name        : BlinkLed
// 	Created By       : Prasad Pandit
//	Contact          : ppandit@qti.qualcomm.com
// 	Last Modified    : 10/2/2017
// 	Revision History : 1v0
// 	------------
// 	Description      : Blinking LED with 1 sec pulse by using clock divider
//
///////////////////////////////////////////////////////////////////////////

module blinking_led#(logic [31:0] CLK_FREQ=125000000) (
  input clk,
  input reset,
  output reg led_pin
);

  logic [31:0] clock_count;

  always_ff @(posedge clk or posedge reset) begin : Counting_Logic
    if (reset) begin
      clock_count   <= 32'd0;
      led_pin       <= 1'd0;
    end
    else begin
      if (clock_count < CLK_FREQ) begin
        clock_count <= clock_count + 32'd1;
      end
      else begin
        clock_count <= 32'd0;        
      end
      if (clock_count < {1'b0,CLK_FREQ[31:1]}) begin
        led_pin <= 1'd0;
      end
      else begin
        led_pin <= 1'd1;
      end      
    end
  end : Counting_Logic
  
endmodule
