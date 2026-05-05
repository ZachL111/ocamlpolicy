#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 54; capacity = 105; latency = 27; risk = 25; weight = 12 };;
expect (score signal_case_1 = 131);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 74; capacity = 71; latency = 15; risk = 12; weight = 8 };;
expect (score signal_case_2 = 189);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 102; capacity = 106; latency = 18; risk = 16; weight = 9 };;
expect (score signal_case_3 = 264);;
expect (classify signal_case_3 = "accept");;
