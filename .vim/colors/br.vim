hi clear

let g:colors_name="white"
set background=light

let bgColor="#F8F8F8"
let black="#535353"
let gray="#949494"
let blue="#446fbd"
let green="#6d8600"
let orange="#e88501"
let purple="#8757ad"

hi Normal           guifg=#535353 guibg=#F8F8F8 gui=none
hi Boolean          guifg=#e88501               gui=none
hi Character        guifg=#535353               gui=none
hi Number           guifg=#6d8600               gui=none
hi Float            guifg=#6d8600               gui=none
hi String           guifg=#e88501               gui=none
hi Conditional      guifg=#446fbd               gui=none
hi Constant         guifg=#e88501               gui=none
hi Debug            guifg=#555555               gui=none
hi Define           guifg=#6d8600               gui=none
hi Delimiter        guifg=#535353               gui=none

" diff
hi DiffChange       guifg=#535353 guibg=#f9f3f3 gui=none
hi DiffAdd          guifg=#df2a6a guibg=#ffdbd3 gui=none
hi DiffDelete       guifg=#F8F8F8 guibg=#cccccc gui=none
hi DiffText         guifg=#df2a6a guibg=#ffdbd3 gui=none

hi Comment          guifg=#949494               gui=none " コメント
hi NonText          guifg=#F8F8F8               gui=none
hi lCursor          guifg=#535353 guibg=#dadada gui=none
hi Cursor                         guibg=#333333 gui=none "IME OFF時のカーソルの色
hi CursorIM         guifg=#F8F8F8 guibg=#e88501 gui=none "IME ON時のカーソルの色
hi CursorLine                     guibg=#f5f5f5 gui=none "カーソル行の色
hi CursorLineNr     guifg=#333333 guibg=#fefefe gui=none "カーソル行番号の色
hi CursorColumn     guifg=#333333 guibg=#eeeeee gui=none
hi Visual                         guibg=#e5e5e5 gui=none " 選択範囲
hi LineNr           guifg=#949494 guibg=#F8F8F8 gui=none " 行番号

hi Directory        guifg=#446fbd               gui=none
hi Error            guifg=#e88501 guibg=#f1f1f1 gui=none
hi ErrorMsg         guifg=#e88501 guibg=#f1f1f1 gui=none
hi Exception        guifg=#8757ad               gui=none

hi FoldColumn       guifg=#F8F8F8 guibg=#eeeeee gui=none
hi Folded           guifg=#F8F8F8 guibg=#eeeeee gui=none
hi Function         guifg=#446fbd               gui=none
hi Identifier       guifg=#446fbd               gui=none
hi Ignore           guifg=#949494               gui=none
hi IncSearch        guifg=#333333 guibg=#cccccc gui=none

hi Keyword          guifg=#6d8600               gui=none
hi Label            guifg=#e88501               gui=none
hi Macro            guifg=#817c4d               gui=none

hi MatchParen                     guibg=#F8F8F8 gui=underline "対応するカッコ
hi ModeMsg          guifg=#555555               gui=none
hi MoreMsg          guifg=#555555               gui=none
hi Operator         guifg=#446fbd               gui=none

hi Pmenu            guifg=#666666 guibg=#f1f1f1 gui=none "補完機能
hi PmenuSel         guifg=#333333 guibg=#e5e5e5 gui=none "補完機能のセレクト
hi PmenuSbar                      guibg=#dddddd gui=none "補完機能のスライドバー
hi PmenuThumb       guifg=#555555               gui=none

hi PreCondit        guifg=#333333               gui=none
hi PreProc          guifg=#8757ad               gui=none
hi Question         guifg=#908308               gui=none
hi Repeat           guifg=#446fbd               gui=none
hi Search           guifg=#F8F8F8 guibg=#bbbbbb gui=none "検索

hi SignColumn       guifg=#555555 guibg=#dadada gui=none
hi SpecialChar      guifg=#777777               gui=none
hi SpecialComment   guifg=#777777               gui=none
hi Special          guifg=#446fbd               gui=none
hi SpecialKey       guifg=#446fbd               gui=none
if has("spell")
  hi SpellBad       guisp=#FF0000 gui=undercurl gui=none
  hi SpellCap       guisp=#7070F0 gui=undercurl gui=none
  hi SpellLocal     guisp=#70F0F0 gui=undercurl gui=none
  hi SpellRare      guisp=#F8F8F8 gui=undercurl gui=none
endif
hi Statement        guifg=#446fbd               gui=none
hi StatusLine       guifg=#535353 guibg=#ececec gui=none "アクティブステータス行
hi StatusLineNC     guifg=#aaaaaa guibg=#ececec gui=none "ノンアクティブステータス行
hi StorageClass     guifg=#8757ad               gui=none
hi Structure        guifg=#e88501               gui=none
hi Tag              guifg=#a2004f               gui=none
hi Title            guifg=#e88501               gui=none
hi Todo             guifg=#F8F8F8 guibg=#446fbd gui=none

hi Typedef          guifg=#333333               gui=none
hi Type             guifg=#6d8600               gui=none
hi Underlined       guifg=#777777

hi VertSplit        guifg=#eeeeee guibg=#eeeeee gui=none "境界線
hi VisualNOS        guifg=#555555 guibg=#dadada gui=none
hi WarningMsg       guifg=#555555 guibg=#e7d9e2 gui=none
hi WildMenu         guifg=#666666 guibg=#eeeeee gui=none

hi ColorColumn      guifg=#333333 guibg=#d3a8c5 gui=none

" custom
hi URL gui=underline guifg=#8757ad
hi ZenkakuSpace guifg=#999999 guibg=#eeeeee gui=underline cterm=underline term=underline
