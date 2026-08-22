(setq-default mode-line-format
              '("[%+] "
                (:propertize "%b" face mode-line-buffer-id)
                mode-line-format-right-align
                " %l,%c "
                mode-name))
