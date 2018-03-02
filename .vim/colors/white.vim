hi clear

let g:colors_name="white"
set background=light

"red    : #b73681
"blue   : #1193b6
"green  : #96c744
"orange : #ea9521

hi Normal           guifg=#333333 guibg=#fefefe gui=none
hi Boolean          guifg=#5a4385               gui=none
hi Character        guifg=#908308               gui=none
hi Number           guifg=#0085ab               gui=none
hi Float            guifg=#5a4385               gui=none
hi String           guifg=#bd6b04               gui=none
hi Conditional      guifg=#a2004f               gui=none
hi Constant         guifg=#714a96               gui=none
hi Debug            guifg=#555555               gui=none
hi Define           guifg=#805500               gui=none
hi Delimiter        guifg=#333333               gui=none
" diff
hi DiffChange       guifg=#555555 guibg=#f9f3f3 gui=none
hi DiffAdd          guifg=#df2a6a guibg=#ffdbd3 gui=none
hi DiffDelete       guifg=#ffffff guibg=#cccccc gui=none
hi DiffText         guifg=#df2a6a guibg=#ffdbd3 gui=none
"hi Comment         guifg=#8ca562               gui=none
hi Comment          guifg=#999999               gui=none "コメント
hi NonText          guifg=#fefefe               gui=none
hi lCursor          guifg=#555555 guibg=#dadada gui=none
hi Cursor                         guibg=#333333 gui=none "IME OFF時のカーソルの色
hi CursorIM         guifg=#ffffff guibg=#74004d gui=none "IME ON時のカーソルの色
hi CursorLine                     guibg=#f5f5f5 gui=none "カーソル行の色
hi CursorLineNr     guifg=#333333 guibg=#fefefe gui=none "カーソル行番号の色
hi CursorColumn     guifg=#333333 guibg=#eeeeee gui=none
hi Visual                         guibg=#e5e5e5 gui=none "選択範囲
hi LineNr           guifg=#666666 guibg=#eeeeee gui=none "行番号

hi Directory        guifg=#00687c               gui=none
hi Error            guifg=#555555 guibg=#e99ac8 gui=none
hi ErrorMsg         guifg=#a2004f guibg=#ffffff gui=none
hi Exception        guifg=#a2004f               gui=none

hi FoldColumn       guifg=#ffffff guibg=#dddddd gui=none
hi Folded           guifg=#ffffff guibg=#dddddd gui=none
"hi Function        guifg=#96024a               gui=none
hi Function         guifg=#59850f               gui=none
hi Identifier       guifg=#593b00               gui=none
hi Ignore           guifg=#888888               gui=none
hi IncSearch        guifg=#333333 guibg=#cccccc gui=none

hi Keyword          guifg=#805500               gui=none
hi Label            guifg=#558800               gui=none
hi Macro            guifg=#817c4d               gui=none

hi MatchParen                     guibg=#ffffff gui=underline "対応するカッコ
hi ModeMsg          guifg=#555555               gui=none
hi MoreMsg          guifg=#555555               gui=none
hi Operator         guifg=#a2004f               gui=none

hi Pmenu            guifg=#666666 guibg=#f1f1f1 gui=none "補完機能
hi PmenuSel         guifg=#333333 guibg=#e5e5e5 gui=none "補完機能のセレクト
hi PmenuSbar                      guibg=#dddddd gui=none "補完機能のスライドバー
hi PmenuThumb       guifg=#00687c               gui=none

hi PreCondit        guifg=#333333               gui=none
hi PreProc          guifg=#00687c               gui=none
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

hi VertSplit        guifg=#eeeeee guibg=#eeeeee gui=none "境界線
hi VisualNOS        guifg=#555555 guibg=#dadada gui=none
hi WarningMsg       guifg=#555555 guibg=#e7d9e2 gui=none
hi WildMenu         guifg=#666666 guibg=#eeeeee gui=none

hi ColorColumn      guifg=#333333 guibg=#d3a8c5 gui=none

" custom
hi URL gui=underline guifg=#0085ab
hi ZenkakuSpace guifg=#333333 guibg=#dddddd gui=underline cterm=underline term=underline
hi vimshellURI gui=underline guifg=#0085ab
