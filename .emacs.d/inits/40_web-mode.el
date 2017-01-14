(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

(with-eval-after-load 'web-mode
  (set-face-attribute 'web-mode-html-tag-bracket-face nil
                      :foreground "blue")
  (set-face-attribute 'web-mode-html-tag-face nil
                      :foreground "blue")
  (set-face-attribute 'web-mode-html-attr-name-face nil
                      :foreground "color-173"))