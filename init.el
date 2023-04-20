;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       (company +childframe)
       (vertico +icons)

       :ui
       doom
       doom-dashboard
       doom-quit
       hl-todo
       modeline
       ophints
       (popup +defaults)
       vc-gutter
       zen
       (treemacs +lsp)

       :editor
       (evil +everywhere)
       (format +onsave)
       multiple-cursors
       rotate-text
       snippets
       word-wrap

       :emacs
       (dired +icons +ranger)
       electric
       (ibuffer +icons)
       (undo +tree)
       vc

       :term
       vterm

       :checkers
       (syntax +childframe)
       (spell +aspell)

       :tools
       editorconfig
       (eval +overlay)
       lookup
       (lsp +peek)
       magit
       rgb
       tree-sitter
       direnv

       :os
       (:if IS-MAC macos)

       :lang
       (cc +lsp +tree-sitter)
       (dart +flutter +lsp)
       emacs-lisp
       (haskell +lsp)
       (json +tree-sitter)
       (javascript +lsp +tree-sitter)
       markdown
       (nix +tree-sitter)
       (python +lsp +pyright +tree-sitter)
       (sh +tree-sitter)
       (web +lsp +tree-sitter)
       yaml
       org

       :config
       (default +bindings +smartparens))
