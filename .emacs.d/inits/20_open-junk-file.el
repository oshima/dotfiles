(require 'open-junk-file)

(global-set-key (kbd "C-x j") 'open-junk-file)

(setq open-junk-file-find-file-function 'find-file)
(setq open-junk-file-format "~/Documents/junk/%Y%m%d-%H%M.")
