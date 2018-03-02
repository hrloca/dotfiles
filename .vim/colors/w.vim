" .hljs-comment, .hljs-quote {
"   color: #998;
"   font-style: italic;
" }
" 
" .hljs-keyword, .hljs-selector-tag, .hljs-subst {
"   color: #333;
"   font-weight: 700;
" }
" 
" .hljs-literal,
" .hljs-number,
" .hljs-tag .hljs-attr,
" .hljs-template-variable,
" .hljs-variable {
"   color: teal;
" }
" 
" .hljs-doctag,
" .hljs-string {
"   color: #d14;
" }
" 
" .hljs-section,
" .hljs-selector-id,
" .hljs-title {
"   color: #900;
"   font-weight: 700;
" }
" 
" .hljs-subst {
"   font-weight: 400;
" }
" 
" .hljs-class .hljs-title,
" .hljs-type {
"   color: #458;
"   font-weight: 700;
" }
" 
" .hljs-attribute,
" .hljs-name,
" .hljs-tag {
"   color: navy;
"   font-weight: 400;
" }
" 
" .hljs-link,
" .hljs-regexp {
"   color: #009926;
" }
" 
" .hljs-bullet,
" .hljs-symbol {
"   color: #990073;
" }
" 
" .hljs-built_in,
" .hljs-builtin-name {
"   color: #0086b3;
" }
" 
" .hljs-meta {
"   color: #999;
"   font-weight: 700;
" }
" 
" .hljs-deletion {
"   background: #fdd;
" }
" 
" .hljs-addition {
"   background: #dfd;
" }
" 
" .hljs-emphasis {
"   font-style: italic;
" }
" 
" .hljs-strong {
"   font-weight: 700;
" }
" 
" .hljs {
"   background: #fff;
"   color: #333;
"   display: block;
"   overflow-x: auto;
"   padding: .5em;
" }
" 
" .hljs-comment,
" .hljs-meta {
"   color: #969896;
" }
" 
" .hljs-emphasis,
" .hljs-quote,
" .hljs-string,
" .hljs-strong,
" .hljs-template-variable,
" .hljs-variable {
"   color: #df5000;
" }
" 
" .hljs-keyword,
" .hljs-selector-tag,
" .hljs-type {
"   color: #a71d5d;
" }
" 
" .hljs-attribute,
" .hljs-bullet,
" .hljs-literal,
" .hljs-symbol {
"   color: #0086b3;
" }
" 
" .hljs-name,
" .hljs-section {
"   color: #63a35c;
" }
" 
" .hljs-tag {
"   color: #333;
" }
" 
" .hljs-attr,
" .hljs-selector-attr,
" .hljs-selector-class,
" .hljs-selector-id,
" .hljs-selector-pseudo,
" .hljs-title {
"   color: #795da3;
" }
" 
" .hljs-addition {
"   background-color: #eaffea;
"   color: #55a532;
" }
" 
" .hljs-deletion {
"   background-color: #ffecec;
"   color: #bd2c00;
" }
" 
" .hljs-link {
"   text-decoration: underline;
" }
"
"
"
" (#969896) グレー
" comment,
" meta

" (#df5000) オレンジ、橙
" string,
" variable,
" template-variable,
" strong,
" emphasis,
" quote

" (#a71d5d) マゼンダ
" keyword,
" selector-tag
" type

" (#0086b3) 青
" literal,
" symbol,
" bullet,
" attribute

" (#63a35c) 緑
" section,
" name

" (#333333) 黒
" tag

" (#795da3); 紫
" title,
" attr,
" selector-id,
" selector-class,
" selector-attr,
" selector-pseudo,

" (#55a532); 緑
" addition

" (#bd2c00, #ffecec); 茶色
" deletion

" (underline)
" link


hi clear
let g:colors_name="w"
set background=light

" color """"""""""""""""""""""""""""""""""""""""

let s:BLACK='#333333'
let s:GLAY='#969896'
let s:ORANGE='#df5000'
let s:BLUE='#0086b3'
let s:MAGENTA='#a71d5d'
let s:PURPLE='#795da3'
let s:GREEN='#63a35c'
let s:BROWN='#bd2c00'

""""""""""""""""""""""""""""""""""""""""""""""""

" ui """""""""""""""""""""""""""""""""""""""""""

let s:BASE_BG='#fefefe'
" text: primary secondary hint disabled
let s:TEXT=s:BLACK
let s:DIVIDERS='#eeeeee'

""""""""""""""""""""""""""""""""""""""""""""""""

" base
exe 'hi Normal guifg='.s:TEXT.' guibg='.s:BASE_BG

exe 'hi Boolean guifg='.s:PURPLE
exe 'hi Character guifg='.s:ORANGE
exe 'hi Number guifg='.s:BLUE
exe 'hi Float guifg='.s:PURPLE
exe 'hi String guifg='.s:BROWN
exe 'hi Conditional guifg='.s:MAGENTA
exe 'hi Constant guifg='.s:PURPLE
exe 'hi Debug guifg='.s:GLAY
exe 'hi Define guifg='.s:BROWN
exe 'hi Delimiter guifg='.s:TEXT

" diff
exe 'hi DiffChange guifg='.'#555555'.' guibg='.'#f9f3f3'
exe 'hi DiffChange guifg='.'#df2a6a'.' guibg='.'#ffdbd3'
exe 'hi DiffDelete guifg='.'#ffffff'.' guibg='.'#cccccc'
exe 'hi DiffText guifg='.'#df2a6a'.' guibg='.'#ffdbd3'

exe 'hi Comment guifg='.'#969896'
exe 'hi NonText guifg='.'#fefefe'

hi lCursor          guifg=#555555 guibg=#dadada gui=none
hi Cursor                         guibg=#333333 gui=none "IME OFF時のカーソルの色
hi CursorIM         guifg=#ffffff guibg=#74004d gui=none "IME ON時のカーソルの色
hi CursorLine                     guibg=#f5f5f5 gui=none "カーソル行の色
hi CursorLineNr     guifg=#333333 guibg=#fefefe gui=none "カーソル行番号の色
hi CursorColumn     guifg=#333333 guibg=#eeeeee gui=none
hi Visual                         guibg=#e5e5e5 gui=none "選択範囲
hi LineNr           guifg=#666666 guibg=#eeeeee gui=none "行番号

hi Directory        guifg=#1193b6               gui=none
hi Error            guifg=#555555 guibg=#e99ac8 gui=none
hi ErrorMsg         guifg=#a2004f guibg=#ffffff gui=none
hi Exception        guifg=#a2004f               gui=none

hi FoldColumn       guifg=#ffffff guibg=#dddddd gui=none
hi Folded           guifg=#ffffff guibg=#dddddd gui=none
"hi Function        guifg=#96024a               gui=none
hi Function         guifg=#59850f               gui=none
hi Identifier       guifg=#805500               gui=none
hi Ignore           guifg=#888888               gui=none
hi IncSearch        guifg=#333333 guibg=#cccccc gui=none

hi Keyword          guifg=#805500               gui=none
hi Label            guifg=#558800               gui=none
hi Macro            guifg=#817c4d               gui=none

hi MatchParen                     guibg=#ffffff gui=underline "対応するカッコ
hi ModeMsg          guifg=#555555               gui=none
hi MoreMsg          guifg=#555555               gui=none
hi Operator         guifg=#a2004f               gui=none

" 補完機能
hi Pmenu            guifg=#666666 guibg=#f1f1f1 gui=none
hi PmenuSel         guifg=#333333 guibg=#e5e5e5 gui=none
hi PmenuSbar                      guibg=#dddddd gui=none
hi PmenuThumb       guifg=#1193b6               gui=none

hi PreCondit        guifg=#333333               gui=none
hi PreProc          guifg=#1193b6               gui=none
hi Question         guifg=#908308               gui=none
hi Repeat           guifg=#a2004f               gui=none
hi Search           guifg=#ffffff guibg=#bbbbbb gui=none "検索

hi SignColumn       guifg=#555555 guibg=#dadada gui=none
hi SpecialChar      guifg=#777777               gui=none
hi SpecialComment   guifg=#777777               gui=none
hi Special          guifg=#59850f               gui=none
hi SpecialKey       guifg=#59850f               gui=none
if has("spell")
  hi SpellBad       guisp=#FF0000 gui=undercurl gui=none
  hi SpellCap       guisp=#7070F0 gui=undercurl gui=none
  hi SpellLocal     guisp=#70F0F0 gui=undercurl gui=none
  hi SpellRare      guisp=#FFFFFF gui=undercurl gui=none
endif
hi Statement        guifg=#a2004f               gui=none
hi StatusLine       guifg=#666666 guibg=#eeeeee gui=none "アクティブステータス行
hi StatusLineNC     guifg=#aaaaaa guibg=#eeeeee gui=none "ノンアクティブステータス行
hi StorageClass     guifg=#805500               gui=none
hi Structure        guifg=#558800               gui=none
hi Tag              guifg=#a2004f               gui=none
hi Title            guifg=#333333               gui=none
hi Todo             guifg=#ffffff guibg=#1193b6 gui=none

hi Typedef          guifg=#333333               gui=none
"hi Type            guifg=#0F4D6A               gui=none
hi Type             guifg=#666666               gui=none
hi Underlined       guifg=#777777

"境界線
exe 'hi VertSplit guifg='.'#eeeeee'.' guibg='.'#eeeeee'
hi VisualNOS        guifg=#555555 guibg=#dadada gui=none
hi WarningMsg       guifg=#555555 guibg=#e7d9e2 gui=none
hi WildMenu         guifg=#666666 guibg=#eeeeee gui=none

hi ColorColumn      guifg=#333333 guibg=#d3a8c5 gui=none

" custom
hi URL gui=underline guifg=#1193b6
hi ZenkakuSpace guifg=#333333 guibg=#dddddd gui=underline cterm=underline term=underline
hi vimshellURI gui=underline guifg=#1193b6
