" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


if exists('g:loaded_vim_tweetvim_action_yank')
  finish
endif


let s:save_cpo = &cpo
set cpo&vim


nnoremap <silent> <Plug>(tweetvim_action_yank) :<C-u>call tweetvim#action('yank')<CR>


let g:loaded_vim_tweetvim_action_yank = 1


let &cpo = s:save_cpo
unlet s:save_cpo

