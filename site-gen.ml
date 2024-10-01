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
close_out oc
printf " convert markdown to html :%s" output_filename 
let ()= 
command =Sys.argv.(1) in 
match command with 
| "create"-> 
if Array.length Sys.argv < 3 then 
printf "create :%s create <template_name>  " Sys.argv(0) 
else 
create_template Sys.argv(2)
| "content" ->
if Array.length Sys.argv< 3   then
printf " create :%s \n markdown_file " Sys.argv(0) 
else 
covert_markdown Sys. argv(2) 
|_ -> 
printf " Command :%s " command
