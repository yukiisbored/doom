;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

(package! direnv)
(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))
(package! modus-themes)
(package! wakatime-mode)
(package! prisma-mode
  :recipe (:host github :repo "pimeys/emacs-prisma-mode" :branch "main"))
