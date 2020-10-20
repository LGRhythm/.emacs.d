;; symbol pair
(use-package smartparens
  :config
  (smartparens-global-mode t)
  (show-paren-mode t)
  ;; disable ' pair in emacs-lisp-mode
  (sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)
  ;; advanced pair
  (define-advice show-paren-function (:around (fn) fix-show-paren-function)
    (cond ((looking-at-p "\\s(") (funcall fn))
	  (t (save-excursion
	       (ignore-errors (backward-up-list))
	       (funcall fn))))))

(provide 'init-smartparens)
