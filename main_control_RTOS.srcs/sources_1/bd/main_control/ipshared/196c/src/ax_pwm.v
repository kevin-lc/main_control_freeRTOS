//////////////////////////////////////////////////////////////////////////////////
//  ov5640 lcd display                                                          //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.cn/                                                //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//   Description:  pwm model
//   pwm out period = frequency(pwm_out) * (2 ** N) / frequency(clk);
//
//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2017/5/3     meisq          1.0         Original
//********************************************************************************/
`timescale 1ns / 1ps
module ax_pwm
#(
	parameter N = 32 //pwm bit width 
)
(
    input         clk,
    input         rst,
    input[N - 1:0]period,
    input[N - 1:0]duty,
    input         enable,
    output        ltrig_out, 
    output        lasel_out
    );
 
reg[N - 1:0] period_r;
reg[N - 1:0] duty_r;
reg[N - 1:0] period_cnt;
reg[N - 1:0] delay_cnt;
//reg pwm_r;
//assign pwm_out = pwm_r;
reg ltrig_out_r;
reg lasel_out_r;
assign ltrig_out = ltrig_out_r;
assign lasel_out = lasel_out_r;

always@(posedge clk or posedge rst)
begin
    if(rst==1)
    begin
        period_r <= { N {1'b0} };
        duty_r <= { N {1'b0} };
    end
    else
    begin
        period_r <= period;
        duty_r   <= duty;
    end
end

always@(posedge clk or posedge rst)
begin
    if(rst==1)
        period_cnt <= { N {1'b0} };
    else if(enable == 1)
        period_cnt <= period_cnt + period_r;
end

/*
always@(posedge clk or posedge rst)
begin
    if(rst==1)
    begin
        ltrig_out_r <= 1'b0;
    end
    else  if(enable == 1)
    begin
        if(period_cnt >= duty_r)
        begin
            ltrig_out_r <= 1'b1;
        end
        else
        begin
            ltrig_out_r <= 1'b0;
        end
    end
end
*/

always@(posedge clk or posedge rst)
begin
    if(rst==1)
        begin
            ltrig_out_r <= 1'b0;
        end
        else  if(enable == 1)
            begin
                ltrig_out_r <= 1'b1;
            end
        else
            begin
                ltrig_out_r <= 1'b0;
            end
end

always@(posedge clk or posedge ltrig_out_r )
begin
    if(ltrig_out_r == 0)
    begin
        lasel_out_r <= 1'b1;
        delay_cnt <= { N {1'b0} };
    end
    else
    begin
        delay_cnt <= delay_cnt + 1;
        if(delay_cnt == 6)
        begin
            lasel_out_r <= 1'b0;
        end
    end
end

endmodule
