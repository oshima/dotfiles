(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[jt]sx?\\'" . web-mode))

(with-eval-after-load 'web-mode
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-attr-value-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.js[x]?\\'")))

  (set-face-attribute 'web-mode-html-tag-bracket-face nil
                      :foreground "#7aa6da")
  (set-face-attribute 'web-mode-html-tag-face nil
                      :foreground "#7aa6da")
  (set-face-attribute 'web-mode-html-attr-name-face nil
                      :foreground "#e78c45"))
