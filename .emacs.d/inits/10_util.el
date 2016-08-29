;; メニューバーを消す
(menu-bar-mode -1)

;; 選択範囲を削除、上書き可能にする
(delete-selection-mode t)

;; 行を折り返さない
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows t)

;; タブはスペース4つにする
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; 右から左に読む言語に対応しない
(setq-default bidi-display-reordering nil)

;; GC の頻度を減らす
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;; バックアップファイルを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)

;; scratch バッファのメッセージを消す
(setq initial-scratch-message "")

;; 1行ずつスクロールする
(setq scroll-conservatively 1)

;; バージョン管理下のファイルへのリンクを確認なしで辿る
(setq vc-follow-symlinks t)

;; 保存時にファイル終端を改行する
(setq require-final-newline t)

;; 保存時に行末の空白を削除する
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; y or n で確認する
(fset 'yes-or-no-p 'y-or-n-p)

;; truncation の記号を変更する
(set-display-table-slot standard-display-table 'truncation
                        (make-glyph-code ?| 'shadow))
