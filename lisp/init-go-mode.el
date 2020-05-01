;; go get -u github.com/mdempsky/gocode
(use-package go-mode)

(use-package company-go
  :config
  (add-hook 'go-mode-hook (lambda ()
			    (set (make-local-variable 'company-backends) '(company-go))
			    (company-mode)))
  )

(use-package flymake-go)

(provide 'init-go-mode)
