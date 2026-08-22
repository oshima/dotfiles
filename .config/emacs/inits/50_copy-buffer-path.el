(defun my/copy-buffer-path ()
  "現在のバッファのファイルパスを git ルートからの相対パスにして
  `@path/to/file' の形式でクリップボードにコピーする。"
  (interactive)
  (let ((file (buffer-file-name)))
    (unless file
      (user-error "Buffer is not visiting a file"))
    (let* ((root (or (vc-git-root file)
                     (locate-dominating-file file ".git")))
           (path (if root
                     (file-relative-name file (expand-file-name root))
                   file))
           (text (concat "@" path)))
      ;; macOS ターミナル emacs: pbcopy でシステムクリップボードへ
      (let ((process-connection-type nil))
        (let ((proc (start-process "pbcopy" nil "pbcopy")))
          (process-send-string proc text)
          (process-send-eof proc)))
      (message "Copied: %s" text))))

(global-set-key (kbd "C-c c") #'my/copy-buffer-path)
