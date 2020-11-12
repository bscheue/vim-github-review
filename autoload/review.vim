let s:save_cpo = &cpo
set cpo&vim

function! review#GetJson()
  let response = system("gh api repos/:owner/:repo/pulls/$(gh pr list -L 1000 | grep \"$(git branch --show-current)\" | awk '{print $1;}')/comments")
  let comments = json_decode(response)
  let qf_entries = []
  call setqflist([], ' ', {'title' : 'review comments'})
  for comment in comments
    if has_key(comment, 'in_reply_to_id') || comment.line == v:null
      continue
    endif
    let entry = {}
    let entry.filename = comment.path
    let entry.text = comment.user.login . ': ' . comment.body
    let entry.lnum = comment.line
    call add(qf_entries, entry)
  endfor
  call setqflist(qf_entries, 'a')
  copen
endfunction

let &cpo = s:save_cpo