" Vim syntax file
" Language: Bend

" Usage Instructions
" Put this file in .vim/syntax/bend.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.bend set filetype=bend
if exists("b:current_syntax")
  finish
endif

syntax clear
let b:current_syntax = "bend"


" Function
syntax match bendFunction '\<\a\w*\(\.\w\+\)*\s*\ze('
syntax match bendFunction '[λ@][a-zA-Z0-9_]\+\(\s\|(\)'

" Language keywords
syntax keyword bendKeywords let open case with for in as switch type if then elif else def while when then pass rewrite match bend object 

"Number literals
syntax match bendNumber "\<[0-9]\+\>\|\<[0-9_]\+\>\|\<0[xX][0-9a-fA-F_]\+\>\|\<0[oO][0-7_]\+\>\|\<0[bB][10_]\+\>"

" Operator
syntax match bendOperator "[-!|&+<>=%/*~^:]"

" Strings literals
syntax region bendString start=/\v"/ skip=/\v\\./ end=/\v"/

" Strings
syntax region bendString start='"' end='"'
syntax region bendString start='\'' end='\''

" Specials
syntax keyword bendSpecial lambda Nil Cons One Zero Succ pred true false new empty tie E I O pos neg tail head fst snd lft rgt left right val

" Type
syntax match bendTypeNames "\<[A-Z][a-zA-Z0-9_']*\>"

" Comments
syntax region bendCommentLine start="#" end="$"
" syntax region bendCommentLine start="//" end="$"

" TODO
syntax keyword bendTodo contained TODO FIXME XXX TBD NOTE

syntax match bendUnusedFuncDef '\v<_[a-z0-9_]+'
            \ contained
            \ nextgroup=bendTypeDefParams

syntax keyword bendUserIdent def bend return let in
syntax match bendUserStorage "(\s*\a\w*\s*\(,\s*\a\w*\s*\)*)"

syntax match bendUserStorage ' \zs[a-zA-Z0-9_]\+\ze\s*='
syntax match bendUserStorage ' \zs[a-zA-Z0-9_]\+\ze\s*:'


syntax region bendAttribute
            \ matchgroup=bendDelimiter
            \ start='\v#!?\['
            \ skip='\v\(.*\)'
            \ end='\]'

syntax region bendAttributeParenWrapped
            \ start='('
            \ end=')'
            \ containedin=bendAttribute
            \ contains=TOP
            \ keepend

" Set highlights
highlight default link bendTypeNames      Type
highlight default link bendNumber         Number
highlight default link bendFunction       Function
highlight default link bendSpecial        Label
highlight default link bendOperator       Operator
highlight default link bendString         String
highlight default link bendFn             Keyword
highlight default link bendKeywords       Repeat
highlight default link bendCommentLine    Comment
highlight default link bendTodo           Todo
highlight default link bendFuncDef        Function
highlight default link bendUserIdent      Identifier
highlight default link bendAttribute      Keyword
highlight default link bendDelimiter      Delimiter
highlight default link bendUnusedFuncDef  bendFuncDef
highlight default link bendUserStorage    Constant
