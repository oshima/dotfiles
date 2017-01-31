(add-to-list 'auto-mode-alist '("/\\.pryrc\\'" . ruby-mode))

(with-eval-after-load 'ruby-mode
  (setq ruby-insert-encoding-magic-comment nil))
