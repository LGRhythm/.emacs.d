;; close ring bell
(setq ring-bell-function 'ignore)

;; auto load outter changes of files
(global-auto-revert-mode t)

;; close auto backup
(setq make-backup-files nil)

;; close buffer auto save
(setq auto-save-default nil)

;; show recent file opened list
(recentf-mode t)
(setq recentf-max-menu-items 30)

;; input override mark area
(delete-selection-mode t)

;; use y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; lisp depth
(setq max-lisp-eval-depth 10000)

;; always recursive files when dired operate
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; use the only buffer for dired
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; advanced occur
(defun occur-dwim ()
  (interactive)
  (push (if (region-active-p)
	    (buffer-substring-no-properties
	     (region-beginning)
	     (region-end))
	  (let ((sym (thing-at-point 'symbol)))
	    (when (stringp sym)
	      (regexp-quote sym))))
	regexp-history)
  (call-interactively 'occur))

(provide 'init-better-defaults)
