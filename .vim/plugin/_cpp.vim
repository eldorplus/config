" Public Accessors
map <F3> :s/\(\(\w\)\(\w\+\)\).*/public function get\u\2\3(){\r\treturn \$this->\1;\r}/<CR>
" Public Setters
map <S-F3> :s/\(\(\w\)\(\w\+\)\).*/public function set\u\2\3(\$\1){\r\t\$this->\1 = \$\1;\r}/<CR>

