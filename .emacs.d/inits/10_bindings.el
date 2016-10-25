;; [C-h] backspace
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; [C-u] backward-kill-line
(global-set-key (kbd "C-u") (lambda () (interactive) (kill-line 0)))

;; [C-q] back-to-indentation
(global-set-key (kbd "C-q") 'back-to-indentation)

;; [C-,] ibuffer
(global-set-key (kbd "C-,") 'ibuffer)

;; [C-.] dired-jump
(global-set-key (kbd "C-.") 'dired-jump)

;; [C-\] unbind
(global-unset-key (kbd "C-\\"))

;; [C-x f] find-file
(global-set-key (kbd "C-x f") 'find-file)

;; [M-f] forward-to-word
(require 'misc)
(global-set-key (kbd "M-f") 'forward-to-word)

;; [M-h] backward-kill-word
(global-set-key (kbd "M-h") 'backward-kill-word)

;; [M-o] other-window
(global-set-key (kbd "M-o") 'other-window)

;; [M-q] quoted-insert
(global-set-key (kbd "M-q") 'quoted-insert)

;; [M-,] beginning-of-buffer
(global-set-key (kbd "M-,") 'beginning-of-buffer)

;; [M-.] end-of-buffer
(global-set-key (kbd "M-.") 'end-of-buffer)
