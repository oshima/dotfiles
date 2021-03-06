(require 'smartparens-config)

(smartparens-global-mode 1)
(show-smartparens-global-mode 1)

(global-set-key (kbd "C--") 'sp-splice-sexp)

(setq sp-highlight-pair-overlay nil)
(setq sp-highlight-wrap-overlay nil)
(setq sp-highlight-wrap-tag-overlay nil)

(set-face-attribute 'sp-show-pair-match-face nil
                    :underline t :inherit 'unspecified)
(set-face-attribute 'sp-show-pair-mismatch-face nil
                    :foreground "red" :underline t :inherit 'unspecified)
