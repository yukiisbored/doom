;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name    "Yuki Langley"
      user-mail-address "hi@yukiisbo.red")

(setq doom-font  (font-spec :family "Fantasque Sans Mono" :size 16)
      doom-theme 'modus-operandi)

(setq display-line-numbers-type nil)

(add-to-list 'auto-mode-alist '("\\.mdx" . markdown-mode))

(after! company
  (setq company-idle-delay nil))

(setq evil-ex-substitute-global t)

(after! lsp-mode
  (setq lsp-enable-symbol-highlighting nil
        lsp-enable-suggest-server-download nil))

(after! lsp-ui
  (setq lsp-ui-sideline-enable nil
        lsp-ui-doc-enable nil))

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map evil-insert-state-map
              ("M-<right>" . copilot-accept-completion-by-line)
              ("M-<return>" . copilot-accept-completion)
              ("M-<tab>" . copilot-next-completion)))

(use-package! wakatime
  :hook (after-init . global-wakatime-mode))

(use-package! prisma-mode
  :hook ((prisma-mode . lsp-deferred)))
