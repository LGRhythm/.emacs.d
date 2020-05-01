;; scroll view
(global-set-key (kbd "M-n") 'scroll-up-line)
(global-set-key (kbd "M-p") 'scroll-down-line)

;; show recent opened files
(global-set-key (kbd "C-c f r") 'recentf-open-files)

;; find function,variable,function-on-key
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; occur search
(global-set-key (kbd "M-s o") 'occur-dwim)

;; comment and uncomment
(global-set-key (kbd "C-c c t") 'comment-or-uncomment-region)

(provide 'init-keybindings)
