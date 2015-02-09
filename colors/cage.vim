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

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="cage"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif



" Support for 256-color terminal
if &t_Co > 255
   "hi Boolean         ctermfg=135
   "hi Character       ctermfg=144

   "数字
   "hi Number          ctermfg=135				cterm=bold

   "字符串
   "hi String          ctermfg=60

   "条件
   "hi Conditional     ctermfg=161               cterm=none
   "hi Conditional     ctermfg=161               cterm=bold

   "hi Constant        ctermfg=135               cterm=none

   "hi Cursor          ctermfg=16  ctermbg=253
   "hi Debug           ctermfg=225               cterm=none
   "hi Define          ctermfg=81
   "hi Delimiter       ctermfg=241

   hi DiffAdd         ctermfg=231 ctermbg=1
   hi DiffChange      ctermfg=231 ctermbg=202
   hi DiffDelete      ctermfg=231 ctermbg=53
   hi DiffText        ctermfg=231 ctermbg=21 cterm=none

   "hi Directory       ctermfg=118               cterm=none
   "hi Error           ctermfg=219 ctermbg=89
   "hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=none

   "异常
   "hi Exception       ctermfg=118               cterm=none
   "hi Exception       ctermfg=118               cterm=bold

   "hi Float           ctermfg=135

   "hi FoldColumn      ctermfg=67  ctermbg=16
   "hi Folded          ctermfg=67  ctermbg=16

   "html开始标签箭头
   hi Function        ctermfg=25	cterm=bold

   "html标签结束箭头
   hi Identifier      ctermfg=25	cterm=bold

   "hi Ignore          ctermfg=244 ctermbg=232
   "hi IncSearch       ctermfg=193 ctermbg=16

   "关键字，js中的 document 等
   "hi Keyword         ctermfg=161               cterm=none
   "hi Keyword         ctermfg=161               cterm=bold

   "js属性名
   hi Label           ctermfg=23                cterm=bold

   "hi Macro           ctermfg=193
   "hi SpecialKey      ctermfg=81

   "html匹配到的标签着色
   hi MatchParen      ctermfg=255  ctermbg=6 cterm=bold

   "hi ModeMsg         ctermfg=229
   "hi MoreMsg         ctermfg=229

   "运算符
   "hi Operator        ctermfg=161	cterm=none
   "hi Operator        ctermfg=161	cterm=bold

   " complete menu(补全菜单)
   hi Pmenu           ctermfg=231  ctermbg=16
   hi PmenuSel        ctermfg=231  ctermbg=27
   hi PmenuSbar                    ctermbg=27
   hi PmenuThumb      ctermfg=123

   hi PreCondit       ctermfg=118               cterm=none

   "getElementsByTagName
   "hi PreProc         ctermfg=23				cterm=none
   "hi PreProc         ctermfg=23				cterm=bold
   "hi Question        ctermfg=81

   "循环
   "hi Repeat          ctermfg=161               cterm=none
   "hi Repeat          ctermfg=161               cterm=bold

   "搜索结果
   hi Search          ctermfg=231 ctermbg=1

   " marks column
   "hi SignColumn      ctermfg=118 ctermbg=235
   "hi SpecialChar     ctermfg=161               cterm=none
   "hi SpecialComment  ctermfg=245               cterm=none
   "hi Special         ctermfg=131 ctermbg=232
   "hi SpecialKey      ctermfg=245

   "html标签
   hi Statement       ctermfg=25               cterm=bold

   "状态栏
   hi StatusLine      ctermfg=12 ctermbg=16

   hi StatusLineNC    ctermfg=235 ctermbg=245

   "CSS属性名
   "hi StorageClass    ctermfg=61				cterm=none
   "hi StorageClass    ctermfg=61				cterm=bold

   "hi Structure       ctermfg=81
   "hi Tag             ctermfg=161
   "hi Title           ctermfg=166
   "hi Todo            ctermfg=231 ctermbg=232   cterm=none

   "hi Typedef         ctermfg=131      ctermbg=1

   "html属性名 var关键字等
   hi Type            ctermfg=25               cterm=bold

   "
   "hi Underlined      ctermfg=244               cterm=none

   "分屏分割线
   hi VertSplit       ctermfg=245   ctermbg=235   cterm=none

   "hi VisualNOS                   ctermbg=238
   "选中区域
   hi Visual          ctermfg=255   ctermbg=27
   "hi WarningMsg      ctermfg=231 ctermbg=238   cterm=none
   "hi WildMenu        ctermfg=239 ctermbg=16

   hi Normal          ctermfg=16  ctermbg=254	cterm=none

   "注释
   hi Comment         ctermfg=243

   "水平cursorline
   hi CursorLine      ctermbg=252   cterm=bold

   "垂直cursorline
   hi CursorColumn    ctermbg=252

   "代码宽度线颜色
   hi colorcolumn 	  ctermfg=255  ctermbg=1

   "行号
   hi LineNr          ctermfg=102 ctermbg=255
   hi NonText         ctermfg=16 ctermbg=254

   hi MBENormal                ctermfg=240
   hi MBEChanged               ctermfg=60
   hi MBEVisibleNormal         ctermfg=239
   hi MBEVisibleChanged        ctermfg=81
   hi MBEVisibleActiveNormal   ctermfg=202
   hi MBEVisibleActiveChanged  ctermfg=219
end
