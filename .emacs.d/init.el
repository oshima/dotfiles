(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq required-packages
      '(avy
        company
        dockerfile-mode
        expand-region
        fish-mode
        git-commit
        gitconfig-mode
        gitignore-mode
        go-mode
        ido-vertical-mode
        init-loader
        json-mode
        markdown-mode
        multiple-cursors
        mwim
        open-junk-file
        popwin
        rust-mode
        smartparens
        smex
        web-mode
        yaml-mode))

(unless package-archive-contents (package-refresh-contents))
(dolist (pkg required-packages)
  (unless (package-installed-p pkg) (package-install pkg)))

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load)
