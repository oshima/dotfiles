(global-company-mode)

(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)

(setq company-selection-wrap-around t)
(setq company-dabbrev-downcase nil)

;; tooltip base
(set-face-attribute 'company-tooltip nil
                    :foreground 'unspecified :background "color-235")
(set-face-attribute 'company-tooltip-selection nil
                    :foreground 'unspecified :background "color-238")
;; tooltip common
(set-face-attribute 'company-tooltip-common nil
                    :foreground "blue")
;; tooltip search
(set-face-attribute 'company-tooltip-search nil
                    :foreground "yellow" :inherit 'unspecified)
(set-face-attribute 'company-tooltip-search-selection nil
                    :foreground "yellow" :inherit 'unspecified)
;; tooltip annotation
(set-face-attribute 'company-tooltip-annotation nil
                    :foreground "red")
;; scrollbar
(set-face-attribute 'company-scrollbar-bg nil
                    :background "color-235")
(set-face-attribute 'company-scrollbar-fg nil
                    :background "color-238")
;; preview
(set-face-attribute 'company-preview nil
                    :foreground "color-246" :inherit 'unspecified)
(set-face-attribute 'company-preview-common nil
                    :foreground "color-246" :inherit 'unspecified)
(set-face-attribute 'company-preview-search nil
                    :foreground "color-246" :inherit 'unspecified)
