;; need omnisharp-roslyn
(use-package omnisharp
  :init
  (setq omnisharp-server-executable-path "~/.config/coc/extensions/coc-omnisharp-data/server/run")
  :config
  (eval-after-load
      'company
    '(add-to-list 'company-backends 'company-omnisharp)))

(use-package csharp-mode
  :config
  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  (add-hook 'csharp-mode-hook 'flycheck-mode)
  (add-hook 'csharp-mode-hook 'omnisharp-start-omnisharp-server t))

(provide 'init-csharp-mode)
