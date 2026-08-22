(global-set-key (kbd "C-;") 'avy-goto-word-1)

(with-eval-after-load 'avy
  (setq avy-style 'at)
  (setq avy-keys (append (number-sequence ?a ?z)
                         (number-sequence ?A ?Z)))

  (set-face-attribute 'avy-lead-face nil
                      :foreground "#e7c547"
                      :background 'unspecified
                      :inverse-video t))
