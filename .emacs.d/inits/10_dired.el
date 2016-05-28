(add-hook 'dired-load-hook
  (lambda ()
    (define-key dired-mode-map (kbd "E") 'wdired-change-to-wdired-mode)
    (define-key dired-mode-map (kbd ".") 'dired-up-directory)
    (define-key dired-mode-map (kbd "C-.") 'dired-up-directory)))
