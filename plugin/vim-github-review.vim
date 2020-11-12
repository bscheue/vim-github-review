" vim-github-review - get GitHub PR review comments in the quickfix list
"
" Maintainer: bscheue <brians1123@gmail.com>
" Website: https://github.com/bscheue/vim-github-review.vim

let s:save_cpo = &cpo
set cpo&vim

command! LoadGithubReviewComments :call review#GetJson()

let &cpo = s:save_cpo
