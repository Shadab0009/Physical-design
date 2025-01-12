// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.7-dev - Revision 4fe142b5c340716f8bd751323655c01057141ffd-SROA_TCAD_release - Date 2025-01-12T16:38:46
// /tmp/.mount_bambu-0zTph2/usr/bin/bambu executed with: /tmp/.mount_bambu-0zTph2/usr/bin/bambu --top-fname=func --range-analysis-mode=skip --compiler=I386_CLANG4 ex_tut3.c 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module gt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 > in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_minus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// Datapath RTL description for func
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_func(clock, reset, in_port_j, in_port_k, in_port_c, in_port_d, return_port);
  // IN
  input clock;
  input reset;
  input [31:0] in_port_j;
  input [31:0] in_port_k;
  input [31:0] in_port_c;
  input [31:0] in_port_d;
  // OUT
  output [31:0] return_port;
  // Component and signal declarations
  wire signed [31:0] out_UIdata_converter_FU_2_i0_fu_func_417475_417553;
  wire signed [31:0] out_UIdata_converter_FU_3_i0_fu_func_417475_417568;
  wire [2:0] out_const_0;
  wire [3:0] out_const_1;
  wire [3:0] out_const_2;
  wire out_gt_expr_FU_32_0_32_5_i0_fu_func_417475_417559;
  wire out_lt_expr_FU_32_0_32_6_i0_fu_func_417475_417570;
  wire [31:0] out_ui_cond_expr_FU_32_32_32_32_7_i0_fu_func_417475_417525;
  wire [31:0] out_ui_cond_expr_FU_32_32_32_32_7_i1_fu_func_417475_417585;
  wire [31:0] out_ui_minus_expr_FU_32_32_32_8_i0_fu_func_417475_417516;
  wire [31:0] out_ui_plus_expr_FU_32_32_32_9_i0_fu_func_417475_417524;
  
  constant_value #(.BITSIZE_out1(3), .value(3'b010)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(4), .value(4'b0101)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(4), .value(4'b1100)) const_2 (.out1(out_const_2));
  ui_minus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_func_417475_417516 (.out1(out_ui_minus_expr_FU_32_32_32_8_i0_fu_func_417475_417516), .in1(in_port_j), .in2(in_port_k));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_func_417475_417524 (.out1(out_ui_plus_expr_FU_32_32_32_9_i0_fu_func_417475_417524), .in1(in_port_k), .in2(in_port_j));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(32), .BITSIZE_in3(4), .BITSIZE_out1(32)) fu_func_417475_417525 (.out1(out_ui_cond_expr_FU_32_32_32_32_7_i0_fu_func_417475_417525), .in1(out_lt_expr_FU_32_0_32_6_i0_fu_func_417475_417570), .in2(out_ui_plus_expr_FU_32_32_32_9_i0_fu_func_417475_417524), .in3(out_const_2));
  UIdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_func_417475_417553 (.out1(out_UIdata_converter_FU_2_i0_fu_func_417475_417553), .in1(in_port_c));
  gt_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_func_417475_417559 (.out1(out_gt_expr_FU_32_0_32_5_i0_fu_func_417475_417559), .in1(out_UIdata_converter_FU_2_i0_fu_func_417475_417553), .in2(out_const_0));
  UIdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_func_417475_417568 (.out1(out_UIdata_converter_FU_3_i0_fu_func_417475_417568), .in1(in_port_d));
  lt_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_func_417475_417570 (.out1(out_lt_expr_FU_32_0_32_6_i0_fu_func_417475_417570), .in1(out_UIdata_converter_FU_3_i0_fu_func_417475_417568), .in2(out_const_1));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(32), .BITSIZE_in3(32), .BITSIZE_out1(32)) fu_func_417475_417585 (.out1(out_ui_cond_expr_FU_32_32_32_32_7_i1_fu_func_417475_417585), .in1(out_gt_expr_FU_32_0_32_5_i0_fu_func_417475_417559), .in2(out_ui_minus_expr_FU_32_32_32_8_i0_fu_func_417475_417516), .in3(out_ui_cond_expr_FU_32_32_32_32_7_i0_fu_func_417475_417525));
  // io-signal post fix
  assign return_port = out_ui_cond_expr_FU_32_32_32_32_7_i1_fu_func_417475_417585;

endmodule

// FSM based controller description for func
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_func(done_port, clock, reset, start_port);
  // IN
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  parameter [0:0] S_0 = 1'b1;
  reg [0:0] _present_state, _next_state;
  reg done_port;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          _next_state = S_0;
          done_port = 1'b1;
        end
        else
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
        end
    endcase
  end
endmodule

// Top component for func
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _func(clock, reset, start_port, done_port, j, k, c, d, return_port);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] j;
  input [31:0] k;
  input [31:0] c;
  input [31:0] d;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  
  controller_func Controller_i (.done_port(done_port), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_func Datapath_i (.return_port(return_port), .clock(clock), .reset(reset), .in_port_j(j), .in_port_k(k), .in_port_c(c), .in_port_d(d));

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_view_convert_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// Minimal interface for function: func
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module func(clock, reset, start_port, j, k, c, d, done_port, return_port);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] j;
  input [31:0] k;
  input [31:0] c;
  input [31:0] d;
  // OUT
  output done_port;
  output [31:0] return_port;
  // Component and signal declarations
  wire [31:0] out_return_port_ui_view_convert_expr_FU;
  
  _func _func_i0 (.done_port(done_port), .return_port(out_return_port_ui_view_convert_expr_FU), .clock(clock), .reset(reset), .start_port(start_port), .j(j), .k(k), .c(c), .d(d));
  ui_view_convert_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) return_port_ui_view_convert_expr_FU (.out1(return_port), .in1(out_return_port_ui_view_convert_expr_FU));

endmodule


