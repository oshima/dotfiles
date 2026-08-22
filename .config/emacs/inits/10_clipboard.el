;; http://hakurei-shain.blogspot.jp/2010/05/mac.html
(defun copy-from-macos ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-macos (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-macos)
(setq interprogram-paste-function 'copy-from-macos)
