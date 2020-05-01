(use-package all-the-icons
  :config
  (setq inhibit-compacting-font-caches t))

(use-package neotree
  :bind (
	 ("<f2>" . 'neotree-toggle))
  :config
  (setq neo-window-width 50)
  (setq neo-show-hidden-files nil)
  (setq neo-smart-open t)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  ;; with projectile
  (setq projectile-switch-project-action 'neotree-projectile-action))

(provide 'init-neotree)
