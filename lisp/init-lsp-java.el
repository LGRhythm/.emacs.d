(use-package lsp-java
  :init
  (setq lsp-java-jdt-download-url  "https://download.eclipse.org/jdtls/milestones/0.57.0/jdt-language-server-0.57.0-202006172108.tar.gz")
  :config
  (add-hook 'java-mode-hook 'lsp))

(use-package dap-java :ensure nil)

(provide 'init-lsp-java)
