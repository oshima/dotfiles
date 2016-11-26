(global-set-key (kbd "C-;") 'avy-goto-word-1)

(setq avy-style 'at)
(setq avy-keys (append (number-sequence ?a ?z) (number-sequence ?A ?Z)))

(with-eval-after-load 'avy
  (set-face-attribute 'avy-lead-face nil
                      :foreground "red" :background 'unspecified))
