(add-to-list 'major-mode-remap-alist '(ruby-mode . ruby-ts-mode))

;;(with-eval-after-load 'ruby-mode
;;  (setq ruby-insert-encoding-magic-comment nil)
;;
;;  (font-lock-add-keywords
;;   'ruby-mode
;;   `((,(rx symbol-start
;;           (or "false" "nil" "self" "true")
;;           symbol-end)
;;      0 font-lock-variable-name-face))))
