(smartparens-global-mode t)
(show-smartparens-global-mode t)

(global-set-key (kbd "M-[") 'sp-backward-unwrap-sexp)
(global-set-key (kbd "M-]") 'sp-unwrap-sexp)

(setq sp-highlight-pair-overlay nil)
(setq sp-highlight-wrap-overlay nil)
(setq sp-highlight-wrap-tag-overlay nil)

(set-face-attribute 'sp-show-pair-match-face nil
                    :inherit 'underline)
(set-face-attribute 'sp-show-pair-mismatch-face nil
                    :inherit 'underline :foreground "red")

(sp-local-pair 'ruby-mode "|" "|")
