(use-package projectile
  :bind (
	 ("C-c p" . 'projectile-command-map))
  :config
  (projectile-mode t))

(provide 'init-projectile)
