;; http://emacs.stackexchange.com/a/7542
(defun simple-mode-line-render (left right)
  (let ((center-width
         (- (window-total-width)
            (length (format-mode-line (append left right))))))
    (append left (make-list center-width " ") right)))

(setq-default mode-line-format
              '(:eval (simple-mode-line-render
                       '("[%+]"
                         " "
                         mode-line-buffer-identification)
                       '("%l,%c"
                         (vc-mode vc-mode)
                         " "
                         mode-name))))
