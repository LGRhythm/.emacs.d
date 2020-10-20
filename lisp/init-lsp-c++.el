(use-package eglot
  :hook
  ((c-mode . eglot-ensure)
   (c++-mode . eglot-ensure)
   (c-mode . lsp)
   (c++-mode . lsp))
  :config
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd")))

(provide 'init-lsp-c++)
