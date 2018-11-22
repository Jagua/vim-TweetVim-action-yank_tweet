" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! tweetvim#action#yank_tweet#define() abort
  return { 'description' : 'yank tweet' }
endfunction


function! tweetvim#action#yank_tweet#execute(tweet) abort
  call setreg('+', printf('@%s: %s', a:tweet.user.screen_name, a:tweet.text))
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

