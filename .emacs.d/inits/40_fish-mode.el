(with-eval-after-load 'fish-mode
  (add-to-list 'fish-keywords "not")

  (font-lock-add-keywords
   'fish-mode
   `(;; Keywords
     (,(rx symbol-start
           (eval `(or ,@fish-keywords))
           symbol-end)
      0 font-lock-keyword-face)

     ;; Function definition
     (,(rx symbol-start
           "function"
           (1+ space)
           (group (1+ (or alnum (syntax symbol))))
           symbol-end)
      1 font-lock-function-name-face)

     ;; For loop
     (,(rx symbol-start
           "for"
           (1+ space)
           (group (1+ (or alnum (syntax symbol))))
           (1+ space)
           (group "in")
           symbol-end)
      (1 font-lock-variable-name-face)
      (2 font-lock-keyword-face))

     ;; Variable definition
     (,(rx symbol-start
           "set"
           (1+ space)
           (optional "-" (1+ letter) (1+ space))
           (group (1+ (or alnum (syntax symbol))))
           symbol-end)
      1 font-lock-variable-name-face)

     ;; Variable expansion
     (,(rx symbol-start
           "$"
           (1+ (or alnum (syntax symbol)))
           symbol-end)
      0 font-lock-variable-name-face)

     ;; Command name
     (,(rx (or line-start ";" "|" "&" "(")
           (0+ space)
           (0+ (or "and" "else" "if" "not" "or" "while") (1+ space))
           (group (1+ (or alnum (syntax symbol))))
           symbol-end)
      1 font-lock-builtin-face))
   'set))
