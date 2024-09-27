tag: user.csharp
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math
tag(): user.code_operators_pointer

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PUBLIC_CAMEL_CASE"
    user.code_public_function_formatter = "PUBLIC_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PUBLIC_CAMEL_CASE"
    user.code_public_variable_formatter = "PUBLIC_CAMEL_CASE"

constant:"const "
void: "void "

new:"new "
make new <user.text>:
  "new "
   insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
   "()"
   key(left)

class : "class "
record: "record "
sealed: "sealed "
make record <user.text>:
  "record "
  insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))  
interface: "interface "
using: "using "

variable: "var "
make variable <user.text>: 
  "var "
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
  "="

dictionary:
  "Dictionary<>"
  key(left)

collection:
  "Collection<>"
  key(left)

ill collection:
  "ICollection<>"
  key(left)

list:
  "List<>"
  key(left)

ill list:
  "IList<>"
  key(left)

ill enumberable:
  "IEnumerable<>"
  key(left)

null:"null"

try:"try"
for each: 
    "foreach"
    key(tab)
for loop: 
  "for"
  key(tab)
throw:   "throw "
this:"this "
public:"public "
private:"private "
readonly:"readonly "  
integer:"int "
string:"string "
return:"return "
if: 
  "if"
  key(tab)
switch:"switch"
async:"async "
await:"await "
task:"Task"
class <user.text>:
  "class "
   insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
   "{}"
   key(left)
   key(enter)

internal:"internal "
static:"static "
when:"when "
enum:"enum "
get:"get;"
set:"set;"
bool:"bool"
yield:"yield "
List:"List"
type of:  
  "typeof()"
  key(left)
false:"false"
true:"true"

#snippets
constructor:
  "ctor"
  key(tab)

# Aattributes
attribute get:"[HttpGet]"
attribute post:"[HttpPost]"
attribute route:
   insert('[Route(')
    key("\"")
attribute:
    "[]"
    key(left)