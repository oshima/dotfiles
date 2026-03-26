(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq required-packages
      '(avy
        company
        dockerfile-mode
        expand-region
        find-file-in-repository
        fish-mode
        git-commit
        github-browse-file
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yaml-mode web-mode smex smartparens slim-mode rust-mode popwin open-junk-file mwim multiple-cursors markdown-mode json-mode init-loader ido-vertical-mode go-mode github-browse-file git-commit fish-mode find-file-in-repository expand-region dockerfile-mode company avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
