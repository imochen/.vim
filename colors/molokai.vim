" Vim color file
"
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

hi Boolean         guifg=#AE81FF
hi Character       guifg=#595CDF
hi Number          guifg=#AE81FF
hi String          guifg=#2B4988
hi Conditional     guifg=#595CDF               gui=none
hi Constant        guifg=#AE81FF               gui=none
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=none
hi Define          guifg=#009F78
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=none

hi Directory       guifg=#2B4988               gui=none
hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#595CDF guibg=#232526 gui=none
hi Exception       guifg=#FF5500               gui=none
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#2B4988
hi Identifier      guifg=#2B4988
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#595CDF               gui=none
hi Label           guifg=#595CDF               gui=none
hi Macro           guifg=#C4BE89               gui=none
hi SpecialKey      guifg=#009F78               gui=none

hi MatchParen      guifg=#FFFFFF guibg=#FF4400 gui=none
hi ModeMsg         guifg=#595CDF
hi MoreMsg         guifg=#595CDF
hi Operator        guifg=#595CDF

" complete menu
hi Pmenu           guifg=#009F78 guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#009F78

hi PreCondit       guifg=#2B4988               gui=none
hi PreProc         guifg=#2B4988
hi Question        guifg=#009F78
hi Repeat          guifg=#595CDF               gui=none
hi Search          guifg=#FFFFFF guibg=#FF0000
" marks column
hi SignColumn      guifg=#2B4988 guibg=#232526
hi SpecialChar     guifg=#595CDF               gui=none
hi SpecialComment  guifg=#465457               gui=none
hi Special         guifg=#009F78 guibg=bg      gui=none
hi SpecialKey      guifg=#888A85               gui=none
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#696CEF               gui=none
hi StatusLine      guifg=#222222 guibg=fg
hi StatusLineNC    guifg=#222222 guibg=#080808
hi StorageClass    guifg=#2B4988               gui=none
hi Structure       guifg=#009F78
hi Tag             guifg=#595CDF               gui=none
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=none

hi Typedef         guifg=#009F78
hi Type            guifg=#2B4998               gui=none
hi Underlined      guifg=#888888               gui=none

hi VertSplit       guifg=#808080 guibg=#080808 gui=none
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=none
hi WildMenu        guifg=#009F78 guibg=#000000

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorColumn                  guibg=#3E3D32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#BCBCBC guibg=#3B3A32
else
   hi Normal          guifg=#D3D6DF guibg=#080808
   hi Comment         guifg=#465457

   "hi CursorLine                    guibg=#151515
   hi CursorLine                    guibg=#151515

   "hi CursorColumn                  guibg=#151515
   hi CursorColumn                  guibg=#151A1F

   hi LineNr          guifg=#BCBCBC guibg=#151515
   hi NonText         guifg=#BCBCBC guibg=#111111
end


" Support for 256-color terminal
if &t_Co > 255
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144

   "数字
   hi Number          ctermfg=135				cterm=bold

   "字符串
   hi String          ctermfg=60

   "条件
   hi Conditional     ctermfg=161               cterm=none
   "hi Conditional     ctermfg=161               cterm=bold

   hi Constant        ctermfg=135               cterm=none

   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=none
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd         ctermfg=231 ctermbg=1
   hi DiffChange      ctermfg=231 ctermbg=202
   hi DiffDelete      ctermfg=231 ctermbg=53
   hi DiffText        ctermfg=231 ctermbg=21 cterm=none

   hi Directory       ctermfg=118               cterm=none
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=none

   "异常
   hi Exception       ctermfg=118               cterm=none
   "hi Exception       ctermfg=118               cterm=bold

   hi Float           ctermfg=135

   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16

   "html开始标签箭头
   hi Function        ctermfg=25	cterm=none
   "hi Function        ctermfg=25	cterm=bold

   "html标签结束箭头
   hi Identifier      ctermfg=25	cterm=none
   "hi Identifier      ctermfg=25	cterm=bold

   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   "关键字，js中的 document 等
   hi Keyword         ctermfg=161               cterm=none
   "hi Keyword         ctermfg=161               cterm=bold

   "js属性名
   hi Label           ctermfg=23                cterm=none
   "hi Label           ctermfg=23                cterm=bold

   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   "html匹配到的标签着色
   hi MatchParen      ctermfg=255  ctermbg=6 cterm=bold

   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229

   "运算符
   hi Operator        ctermfg=161	cterm=none
   "hi Operator        ctermfg=161	cterm=bold

   " complete menu(补全菜单)
   hi Pmenu           ctermfg=231  ctermbg=16
   hi PmenuSel        ctermfg=231  ctermbg=27
   hi PmenuSbar                    ctermbg=27
   hi PmenuThumb      ctermfg=123

   hi PreCondit       ctermfg=118               cterm=none

   "getElementsByTagName
   hi PreProc         ctermfg=23				cterm=none
   "hi PreProc         ctermfg=23				cterm=bold
   hi Question        ctermfg=81

   "循环
   hi Repeat          ctermfg=161               cterm=none
   "hi Repeat          ctermfg=161               cterm=bold

   "搜索结果
   hi Search          ctermfg=231 ctermbg=1

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=none
   hi SpecialComment  ctermfg=245               cterm=none
   hi Special         ctermfg=131 ctermbg=232
   hi SpecialKey      ctermfg=245

   "html标签
   hi Statement       ctermfg=25               cterm=none
   "hi Statement       ctermfg=25               cterm=bold

   "状态栏
   "hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLine      ctermfg=250 ctermbg=17

   "hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StatusLineNC    ctermfg=235 ctermbg=242

   "CSS属性名
   hi StorageClass    ctermfg=61				cterm=none
   "hi StorageClass    ctermfg=61				cterm=bold

   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=none

   hi Typedef         ctermfg=131

   "html属性名
   hi Type            ctermfg=23               cterm=none
   "hi Type            ctermfg=23               cterm=bold

   "
   hi Underlined      ctermfg=244               cterm=none

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=none
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=none
   hi WildMenu        ctermfg=239 ctermbg=16

   hi Normal          ctermfg=247  ctermbg=16	cterm=none

   "注释
   hi Comment         ctermfg=240

   "水平cursorline
   hi CursorLine       			  ctermbg=233   cterm=bold

   "垂直cursorline
   hi CursorColumn    ctermbg=233

   "代码宽度线颜色
   hi colorcolumn 	  ctermfg=255  ctermbg=1

   hi LineNr          ctermfg=231 ctermbg=233
   hi NonText         ctermfg=250 ctermbg=234

   hi MBENormal                ctermfg=240
   hi MBEChanged               ctermfg=60
   hi MBEVisibleNormal         ctermfg=250
   hi MBEVisibleChanged        ctermfg=81
   hi MBEVisibleActiveNormal   ctermfg=202
   hi MBEVisibleActiveChanged  ctermfg=219
end
