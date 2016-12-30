(defun make-mode-line-format (left right)
  (let ((margin (- (window-total-width)
                   (length (format-mode-line (list left right))))))
    (list left (make-string (max margin 0) ? ) right)))

(setq-default mode-line-format
              '(:eval (make-mode-line-format mode-line-left-format
                                             mode-line-right-format)))

(setq mode-line-left-format
      '("[%+] " (:propertize "%b" face mode-line-buffer-id)))

(setq mode-line-right-format
      '("%l,%c" (vc-mode vc-mode) " " mode-name))
