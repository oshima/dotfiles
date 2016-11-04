(defun make-mode-line-format (left right)
  (let ((margin (- (window-total-width)
                   (length (format-mode-line (append left right))))))
    (append left (make-list (max margin 0) " ") right)))

(setq mode-line-left-format
      '("[%+] " mode-line-buffer-identification))

(setq mode-line-right-format
      '("%l,%c" (vc-mode vc-mode) " %m"))

(setq-default mode-line-format
              '(:eval (make-mode-line-format mode-line-left-format
                                             mode-line-right-format)))
