" File:   manlib.vim
" Author: miaoguoxiang
" Version: 0.0.1
" Last Modified: 2016.11.20
" Copyright: Copyright (C) miaoguoxiang
"
let s:manlib_src = "src"
let s:manlib_tags = "tags"
let s:manlib_tag = "tag"
let s:manlib_src_path = g:manlib_path . "/" . s:manlib_src
"let s:manlib_vsplit = "vsplit"
let s:manlib_vsplit = "tabedit"
let s:manlib_tags_path = g:manlib_path . "/" . s:manlib_tags

let &path=&path . ',' . s:manlib_src_path
let &tags=&tags . ',' . s:manlib_tags_path

if exists("loaded_manlib")
	finish
endif

let loaded_manlib = 1

let s:save_cpo = &cpo
set cpo&vim

function Manhelp_main()
	help manlib
endfunction

function Manlib_main()
	"help manlib
endfunction

function Mantag_main(tag_name, manfun)
	let s:mantag_tag = s:manlib_tag . " " . a:tag_name
	execute ":" . s:mantag_tag
endfunction

function Manfile_main(file_name, manfile)
	let s:manfile_path = s:manlib_vsplit . " " . s:manlib_src_path . "/" . a:file_name
	execute ":" . s:manfile_path
endfunction

function Manindex_main()
	let s:manindex_path = s:manlib_vsplit . " " . g:manlib_path . "/" . "index" 
	execute ":" . s:manindex_path
endfunction

" Manhelp
if !exists(":Manhelp")
	command -nargs=0 Manhelp :call Manhelp_main()
endif

" Manlib
if !exists(":Manlib")
	command -nargs=1 Manlib :call Manlib_main(<q-args>, 0)
endif

" Manfun
if !exists(":Mantag")
	command -nargs=1 Manfun :call Mantag_main(<q-args>, 0)
endif

" Manfile
if !exists(":Manfile")
	command -nargs=1 Manfile :call Manfile_main(<q-args>, 0)
endif

" Manindex
if !exists(":Manindex")
	command -nargs=0 Manindex :call Manindex_main()
endif

" nmap 
nmap <C-m>i :Manindex<CR>

let &cpo = s:save_cpo

