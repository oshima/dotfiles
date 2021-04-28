;; [C-h] backspace
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; [C-u] backward-kill-line
(global-set-key (kbd "C-u") (lambda () (interactive) (kill-line 0)))

;; [C-,] ibuffer
(global-set-key (kbd "C-,") 'ibuffer)

;; [C-.] dired-jump
(global-set-key (kbd "C-.") 'dired-jump)

;; [C-\] unbind
(global-unset-key (kbd "C-\\"))

;; [C-x f] find-file-in-repository
(global-set-key (kbd "C-x f") 'find-file-in-repository)

;; [C-x r] revert-buffer
(global-set-key (kbd "C-x r") 'revert-buffer)

;; [M-f] forward-to-word
(require 'misc)
(global-set-key (kbd "M-f") 'forward-to-word)

;; [M-h] backward-kill-word
(global-set-key (kbd "M-h") 'backward-kill-word)

;; [M-,] beginning-of-buffer
(global-set-key (kbd "M-,") 'beginning-of-buffer)

;; [M-.] end-of-buffer
(global-set-key (kbd "M-.") 'end-of-buffer)
