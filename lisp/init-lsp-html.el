(use-package web-mode
  :mode ("\\.html\\'" "\\.jsp\\'" "\\.wxml\\'")
  :hook
  (html-mode . web-mode)
  (web-mode . lsp))

(provide 'init-lsp-html)
