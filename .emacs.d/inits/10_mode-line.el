;; http://emacs.stackexchange.com/a/7542
(defun make-mode-line-format (left right)
  (let ((center-width
         (- (window-total-width)
            (length (format-mode-line (append left right))))))
    (append left (make-list center-width " ") right)))

(setq mode-line-left-format
      '("[%+]"
        " "
        mode-line-buffer-identification))

(setq mode-line-right-format
      '("%l,%c"
        (vc-mode vc-mode)
        " "
        mode-name))

(setq-default mode-line-format
              '(:eval (make-mode-line-format mode-line-left-format
                                             mode-line-right-format)))
