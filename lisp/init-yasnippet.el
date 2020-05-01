(use-package yasnippet
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode))

(use-package auto-yasnippet)

(provide 'init-yasnippet)
