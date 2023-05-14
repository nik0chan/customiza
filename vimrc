" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

set number
set autoindent

syntax on 

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on


