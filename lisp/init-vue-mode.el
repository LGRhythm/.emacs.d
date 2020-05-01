(use-package vue-mode
  :config
  (setq vue-mode-packages '(vue-mode))
  (setq vue-mode-excluded-packages '())
  (defun vue-mode/init-vue-mode ()
    (setq mmm-submode-decoration-level 0)))

(provide 'init-vue-mode)
