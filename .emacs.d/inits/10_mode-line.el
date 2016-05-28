(setq-default mode-line-format
 '("%e"
   mode-line-mule-info
   mode-line-modified
   mode-line-remote
   "  "
   mode-line-buffer-identification
   "  "
   mode-line-position
   "  "
   (vc-mode vc-mode)
   mode-line-modes))

(setq-default mode-line-buffer-identification
 '(:eval
    (if (buffer-modified-p)
      (propertize "%17b" 'face 'warning)
      (propertize "%17b" 'face 'mode-line-buffer-id))))

(setq mode-line-position
 '(:eval (format "%%l/%d" (count-lines (point-max) (point-min)))))

;; http://emacs.stackexchange.com/questions/10955
(setcdr (assq 'vc-mode mode-line-format)
 '((:eval
     (cond ((string-match "^ Git." vc-mode) (concat (substring vc-mode 5) "  "))
           (t "")))))
