;; Hide menu bar
(menu-bar-mode 0)

;; Enable to delete/overwrite region
(delete-selection-mode t)

;; Don't wrap but truncate lines
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

;; Tab is 4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Don't create these files automatically
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(setq create-lockfiles nil)

;; Reduce flequency of GC
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; Follow symlinks to version controlled files
(setq vc-follow-symlinks t)

;; Empty initial message of scratch buffer
(setq initial-scratch-message "")

;; Scroll 1 line at a time
(setq scroll-conservatively 1)

;; Preserve cursor position when paging down/up
(setq scroll-preserve-screen-position t)

;; Require final newline when saving
(setq require-final-newline t)

;; Delete trailing whitespaces when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Answer with y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Change marker of line truncation
(set-display-table-slot standard-display-table 'truncation
                        (make-glyph-code ?| 'shadow))
