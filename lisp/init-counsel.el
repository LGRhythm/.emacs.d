(use-package counsel
  :bind (
	 ("C-s" . 'swiper)
	 ("C-h f" . 'counsel-describe-function)
	 ("C-h v" . 'counsel-describe-variable)
	 ("C-h l" . 'counsel-find-library)
	 ("M-s i" . 'counsel-imenu))
  :config
  (ivy-mode t)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recurisive-minibuffers t))

(provide 'init-counsel)
