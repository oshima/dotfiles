(with-eval-after-load 'fish-mode
  (setq
   fish-keywords
   (append fish-keywords '("not" "read")))

  (setq
   fish-font-lock-keywords-1
   `(;; Keywords
     (,(rx
        symbol-start
        (eval `(or ,@fish-keywords))
        symbol-end)
      .
      font-lock-keyword-face)

     ;; Function definition
     (,(rx
        symbol-start
        "function"
        (1+ space)
        (group (1+ (or alnum (syntax symbol))))
        symbol-end)
      (1 font-lock-function-name-face))

     ;; For loop
     (,(rx
        symbol-start
        "for"
        (1+ space)
        (group (1+ (or alnum (syntax symbol))))
        (1+ space)
        (group "in")
        symbol-end)
      (1 font-lock-variable-name-face)
      (2 font-lock-keyword-face))

     ;; Variable definition
     (,(rx
        symbol-start
        (or "read" "set")
        (1+ space)
        (optional "-" (repeat 1 2 letter) (1+ space))
        (group (1+ (or alnum (syntax symbol))))
        symbol-end)
      (1 font-lock-variable-name-face))

     ;; Variable substitution
     (,(rx
        symbol-start
        "$"
        (1+ (or alnum (syntax symbol)))
        symbol-end)
      .
      font-lock-variable-name-face)

     ;; Command name
     (,(rx
        (or line-start ";" "|" "&" "(")
        (0+ space)
        (0+ (or "and" "if" "not" "or" "while") (1+ space))
        (group (1+ (or alnum (syntax symbol))))
        symbol-end)
      (1 font-lock-builtin-face)))))
