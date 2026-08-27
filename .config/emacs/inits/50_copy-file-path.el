(defun my/buffer-relative-path ()
  "現在のバッファのファイルパスを git ルートからの相対パスにして返す。"
  (let ((file (buffer-file-name)))
    (unless file
      (user-error "Buffer is not visiting a file"))
    (let ((root (or (vc-git-root file)
                    (locate-dominating-file file ".git"))))
      (if root
          (file-relative-name file (expand-file-name root))
        file))))

(defun my/copy-to-clipboard (text)
  "text をクリップボードにコピーする。"
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" nil "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc)))
  (message "Copied: %s" text))

(defun my/copy-file-path ()
  "現在のバッファのファイルパスを git ルートからの相対パスにして
  `path/to/file' の形式でクリップボードにコピーする。"
  (interactive)
  (my/copy-to-clipboard (my/buffer-relative-path)))

(defun my/copy-file-path-with-line ()
  "現在のバッファのファイルパスを git ルートからの相対パスにして
  `path/to/file:123' の形式でクリップボードにコピーする。"
  (interactive)
  (my/copy-to-clipboard (format "%s:%d" (my/buffer-relative-path) (line-number-at-pos))))

(defun my/copy-file-path-for-claude ()
  "現在のバッファのファイルパスを git ルートからの相対パスにして
  `@path/to/file' の形式でクリップボードにコピーする。"
  (interactive)
  (my/copy-to-clipboard (concat "@" (my/buffer-relative-path))))

(global-set-key (kbd "C-c f") #'my/copy-file-path)
(global-set-key (kbd "C-c l") #'my/copy-file-path-with-line)
(global-set-key (kbd "C-c c") #'my/copy-file-path-for-claude)
