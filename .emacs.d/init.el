(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'cl-lib)
(let*
    ((to-install
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
        yaml-mode))
     (not-installed
      (cl-remove-if 'package-installed-p to-install)))
  (when not-installed
    (package-refresh-contents)
    (dolist (package not-installed) (package-install package))))

(init-loader-load)
