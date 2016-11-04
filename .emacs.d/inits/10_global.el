;; Hide menu bar
(menu-bar-mode -1)

;; Enable to delete/overwrite region
(delete-selection-mode t)

;; Don't wrap but trancate lines
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

;; Tab is 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Don't make backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Reduce flequency of GC
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; Make scratch buffer's initial message be empty
(setq initial-scratch-message "")

;; Scroll 1 line at a time
(setq scroll-conservatively 1)

;; Follow symlinks to version controlled files
(setq vc-follow-symlinks t)

;; Require final newline when saving
(setq require-final-newline t)

;; Delete trailing whitespaces when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Answer with y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Change symbol character of truncation
(set-display-table-slot standard-display-table 'truncation
                        (make-glyph-code ?| 'shadow))
