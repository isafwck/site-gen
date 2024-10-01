open Printf 
open sys 
let create_template_name = 
let template=Printf.sprintf""
let filename= name ^ ".html"in 
let oc = open_out filename in 
output_string oc template
close_out oc 
printf "created template :%s\n" filename
let convert_markdown filename = 
let input = open_in filename in 
let content = really_input_string input (in_channel_length input) in 
close_in input;
let html_content = Printf.sprintf"<div>\n%s\n</div>" content in ;
let output_filename= Filename.chop_suffix filename (Filename.extension filename) ^  " .html"  in 
let oc = open_out output_filename in 
output_string oc html_content 
