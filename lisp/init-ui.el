;; close toolbar
(tool-bar-mode -1)

;; close menu bar
(menu-bar-mode -1)

;; hide scroll bar
(scroll-bar-mode -1)

;; close default splash
(setq inhibit-splash-screen t)

;; fullscreen when start
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; cursor type
(setq-default cursor-type 'bar)

;; highlight current line
(global-hl-line-mode t)

;; theme
(if (not (eq 'window-system nil))
    (use-package dracula-theme
      :config
      (setq dracula-alternate-mode-line-and-minibuffer t)
      (load-theme 'dracula t)))

;; show line number
(global-linum-mode t)
(setq linum-format "%4d")

(provide 'init-ui)
