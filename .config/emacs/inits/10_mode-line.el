(setq-default mode-line-format
              '(:eval
                `((,(- (window-total-width)
                       (length (format-mode-line mode-line-right-format)))
                   ,mode-line-left-format)
                  ,mode-line-right-format)))

(setq mode-line-left-format
      '("[%+] " (:propertize "%b" face mode-line-buffer-id)))

(setq mode-line-right-format
      '(" %l,%c " mode-name))
