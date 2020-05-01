(use-package popwin
  :config
  (setq popwin:popup-window-position (quote right))
  (setq popwin:popup-window-width 80)
  (popwin-mode t))

(provide 'init-popwin)
