(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq required-packages
      '(avy
        company
        expand-region
        git-commit
        gitconfig-mode
        gitignore-mode
        hide-comnt
        ido-vertical-mode
        init-loader
        json-mode
        markdown-mode
        multiple-cursors
        open-junk-file
        popwin
        scala-mode
        smart-newline
        smartparens
        smex
        visual-regexp
        web-mode
        yaml-mode))

(unless package-archive-contents (package-refresh-contents))
(dolist (pkg required-packages)
  (unless (package-installed-p pkg) (package-install pkg)))

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load)
