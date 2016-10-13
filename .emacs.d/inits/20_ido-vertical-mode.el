(ido-mode 1)
(ido-vertical-mode 1)

(setq ido-enable-flex-matching t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(set-face-attribute 'ido-vertical-match-face nil
                    :weight 'unspecified
                    :underline 'unspecified
                    :inherit 'unspecified)
