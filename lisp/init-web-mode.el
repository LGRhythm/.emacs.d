(use-package web-mode
  :mode ("\\.html\\'" "\\.jsp\\'")
  :bind (
	 ("C-c t i" . 'my-toggle-web-indent))
  :config
  ;; open flycheck
  (add-hook 'web-mode-hook 'flycheck-mode)
  ;; replace dos eol
  (defun replace-dos-eol ()
    "Replace DOS eolns CR LF with Unix eolns CR"
    (interactive)
    (goto-char (point-min))
    (while (search-forward "\n\r" nil t) (replace-match "")))
  ;; default indent
  (defun my-web-mode-indent-setup ()
    (setq web-mode-markup-indent-offset 2) ; web-mode, html tag in html file
    (setq web-mode-css-indent-offset 2)    ; web-mode, css in html file
    (setq web-mode-code-indent-offset 2)   ; web-mode, js code in html file
    )
  (add-hook 'web-mode-hook 'my-web-mode-indent-setup)
  ;; toggle indent
  (defun my-toggle-web-indent ()
    (interactive)
    ;; web development
    (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
	(progn
	  (setq js-indent-level (if (= js-indent-level 2) 4 2))
	  (setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

    (if (eq major-mode 'web-mode)
	(progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
	       (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
	       (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
    (if (eq major-mode 'css-mode)
	(setq css-indent-offset (if (= css-indent-offset 2) 4 2)))

    (setq indent-tabs-mode nil)))

(provide 'init-web-mode)
