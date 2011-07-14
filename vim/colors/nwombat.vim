" Vim color file
" Last Change:  June 08 2009
"
" Nwombat.vim - version modifie du theme par Lars Nielsen
"
" >> http://vim.dindinx.net/vim7/html/syntax.txt.php

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "nwombat"


"###########################################################
"	*hi-groups* *highlight-default*

hi Cursor			guifg=#222222	ctermfg=234
hi Cursor			guibg=#ecee90	ctermbg=228
hi Cursor			gui=none	cterm=none

hi CursorLine			guibg=#32322e	ctermbg=235
hi CursorLine			gui=none	cterm=none

hi CursorColumn			guibg=#2d2d2d	ctermbg=235

hi Folded			guifg=#a0a8b0	ctermfg=145
hi Folded			guibg=#404048	ctermbg=237
hi Folded			gui=none	cterm=none

hi! link FoldColumn		Folded

hi LineNr			guifg=#857b6f	ctermfg=101
hi LineNr			guibg=#121212	ctermbg=232
hi LineNr			gui=none	cterm=none

hi MatchParen			guifg=#ecee90	ctermfg=228
hi MatchParen			guibg=#857b6f	ctermbg=101
hi MatchParen			gui=bold	cterm=bold

hi! link NonText			LineNr

hi Normal			guifg=#cccccc	ctermfg=251
hi Normal			guibg=#242424	ctermbg=234
hi Normal			gui=none	cterm=none

hi Pmenu			guifg=#f6f3e8	ctermfg=230
hi Pmenu			guibg=#444444	ctermbg=237
hi PmenuSel			guifg=#121212	ctermfg=232
hi PmenuSel			guibg=#caeb82	ctermbg=192

hi Search			guifg=#444444	ctermfg=237
hi Search			guibg=#af87d7	ctermbg=140

hi SpecialKey			guifg=#6c6c6c	ctermfg=241
hi SpecialKey			guibg=#2d2d2d	ctermbg=235
hi SpecialKey			gui=none	cterm=none

hi StatusLine			guifg=#f6f3e8	ctermfg=230
hi StatusLine			guibg=#444444	ctermbg=237
hi StatusLine			gui=italic	cterm=none

hi StatusLineNC			guifg=#857b6f	ctermfg=101
hi StatusLineNC			guibg=#444444	ctermbg=237
hi StatusLineNC			gui=none	cterm=none

hi Title			guifg=#f6f3e8	ctermfg=230
hi Title			gui=bold	cterm=bold

hi VertSplit			guifg=#444444	ctermfg=237
hi VertSplit			guibg=#444444	ctermbg=237
hi VertSplit			gui=none	cterm=none

hi Visual			guifg=#ecee90	ctermfg=228
hi Visual			guibg=#597418	ctermbg=64
hi Visual			gui=none	cterm=none

hi! link VisualNOS		Visual

hi WarningMsg			guifg=#ff0000	ctermfg=196


"###########################################################
"	*group-name*

hi Comment			guifg=#c0bc6c	ctermfg=143
hi Comment			gui=italic	cterm=none

hi Constant			guifg=#e5786d	ctermfg=173
hi Constant			gui=none	cterm=none
hi	String			guifg=#95e454	ctermfg=113
hi	String			gui=italic	cterm=none
hi	Number			guifg=#e5786d	ctermfg=173
hi	Number			gui=none	cterm=none
"	Character
"	Boolean
"	Float

hi Identifier			guifg=#caeb82	ctermfg=192
hi Identifier			gui=none	cterm=none
hi	Function		guifg=#caeb82	ctermfg=192
hi	Function		gui=none	cterm=none

hi Statement			guifg=#87afff	ctermfg=111
hi Statement			gui=none	cterm=none
hi	Keyword			guifg=#87afff	ctermfg=111
hi	Keyword			gui=none	cterm=none
"	Conditional
"	Repeat
"	Label
"	Operator
"	Exception

hi PreProc			guifg=#e5786d	ctermfg=173
hi PreProc			gui=none	cterm=none
"	Include
"	Define
"	Macro
"	PreCondit

hi Type				guifg=#caeb82	ctermfg=192
hi Type				gui=none	cterm=none
"	StorageClass
"	Structure
"	Typedef

hi Special			guifg=#ffdead	ctermfg=223
hi Special			gui=none	cterm=none
"	SpecialChar
"	Tag
"	Delimiter
"	SpecialComment
"	Debug

hi Todo				guifg=#857b6f	ctermfg=101
hi Todo				gui=italic	cterm=none


"###########################################################
"	> html

hi link htmlTag			Keyword
hi link htmlTagName		Conditional
hi link htmlEndTag		Identifier

hi! link htmlArg		Statement
hi! link htmlEndTag		Special
hi! link htmlLink		Underlined
hi! link htmlSpecialTagName	PreProc
hi! link htmlTag		Special
hi! link htmlTagName		Type


"###########################################################
"	> xml

hi link xmlTag			Keyword
hi link xmlTagName		Conditional
hi link xmlEndTag		Identifier


"###########################################################
"	> ruby

hi rubyBlockParameter		guifg=#FFFFFF	ctermfg=15
hi rubyClass			guifg=#FFFFFF	ctermfg=15
hi rubyConstant			guifg=#DA4939	ctermfg=167
hi rubyInstanceVariable		guifg=#D0D0FF	ctermfg=189
hi rubyInterpolation		guifg=#519F50	ctermfg=107
hi rubyLocalVariableOrMethod	guifg=#D0D0FF	ctermfg=189
hi rubyPredefinedConstant	guifg=#DA4939	ctermfg=167
hi rubyPseudoVariable		guifg=#FFC66D	ctermfg=221
hi rubyStringDelimiter		guifg=#A5C261	ctermfg=143

" Special for Ruby
"hi rubyRegexp                  guifg=#B18A3D      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
"hi rubyRegexpDelimiter         guifg=#FF8000      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
"hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
"hi rubyInterpolationDelimiter  guifg=#00A0A0      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
"hi rubyControl                 guifg=#6699CC      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
"hi rubyStringDelimiter         guifg=#336633      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"hi link rubyClass             Keyword
"hi link rubyModule            Keyword
"hi link rubyKeyword           Keyword
"hi link rubyOperator          Operator
"hi link rubyIdentifier        Identifier
"hi link rubyInstanceVariable  Identifier
"hi link rubyGlobalVariable    Identifier
"hi link rubyClassVariable     Identifier
"hi link rubyConstant          Type
