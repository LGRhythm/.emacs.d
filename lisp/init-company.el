(use-package company
  :bind (
	 :map company-active-map
	 ("M-n" . nil)
	 ("M-p" . nil)
	 ("C-n" . 'company-select-next)
	 ("C-p" . 'company-select-previous)
	 ("C-M-/" . 'hippie-expand))
  :config
  (setq company-idle-delay 0.05)
  (setq company-minimum-prefix-length 1)
  (global-company-mode t)
  )

;; advanced company
(setq hippie-expand-try-function-list
      '(try-expand-debbrev
	try-expand-debbrev-all-buffers
	try-expand-debbrev-from-kill
	try-complete-file-name
	try-complete-file-name-partially
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol
	try-complete-lisp-symbol-partially))

(provide 'init-company)
