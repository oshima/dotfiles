(add-to-list 'auto-mode-alist '("/\\.pryrc\\'" . ruby-mode))

(with-eval-after-load 'ruby-mode
  (setq ruby-insert-encoding-magic-comment nil)

  (font-lock-add-keywords
   'ruby-mode
   `((,(rx symbol-start
           (or "true" "false" "nil")
           symbol-end)
      0 font-lock-variable-name-face))))
