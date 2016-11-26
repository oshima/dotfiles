(add-hook 'dired-load-hook
          (lambda ()
            (define-key dired-mode-map (kbd "i") nil)
            (define-key dired-mode-map (kbd "o") nil)
            (define-key dired-mode-map (kbd "E") 'wdired-change-to-wdired-mode)
            (define-key dired-mode-map (kbd ".") 'dired-up-directory)
            (define-key dired-mode-map (kbd "C-.") 'dired-up-directory)))

(add-hook 'dired-after-readin-hook
          (lambda ()
            (let ((buffer-read-only nil))
              (save-excursion
                (goto-char (point-min))
                (flush-lines "^ *total")
                (set-buffer-modified-p nil)))))
