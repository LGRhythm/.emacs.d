;; init packages
(eval-when-compile
  ;; set lisp config path
  (add-to-list 'load-path "~/.emacs.d/lisp/")
  ;; set tencent mirrorrs
  (setq package-archives
        '(("melpa" . "https://mirrors.cloud.tencent.com/elpa/melpa/")
          ("gnu" . "https://mirrors.cloud.tencent.com/elpa/gnu/")
          ("marmalade" . "https://mirrors.cloud.tencent.com/elpa/marmalade/")
          ("org" . "https://mirrors.cloud.tencent.com/elpa/org/")))
  ;; use-package
  (condition-case nil
      (require 'use-package)
    (file-error
     (require 'package)
     (package-refresh-contents)
     (package-initialize)
     (package-install 'use-package)
     (require 'use-package))
    )
  )

;; open my config file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-h 1") 'open-my-init-file)

;; set path of custom.el
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

;; always ensure packages installed
(setq use-package-always-ensure t)

;; proxy
;;(setq url-proxy-services
;;      '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
;;	("http" . "127.0.0.1:8118")
;;	("https" . "127.0.0.1:8118")))

;;(setq url-gateway-method 'socks)
;;(setq socks-server '("Default server" "127.0.0.1" 1080 5))

;; env
(require 'init-exec-path-from-shell)

;; org-mode
(require 'init-org)

;; base
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)

;; tools
(require 'init-which-key)
(require 'init-counsel)
(require 'init-yasnippet)
(require 'init-smartparens)
(require 'init-expand-region)
(require 'init-hungry-delete)
(require 'init-window-numbering)

;; develop
(require 'init-company)
(require 'init-flycheck)
(require 'init-projectile)

;; program
(require 'init-lsp-mode)
(require 'init-lsp-java)
(require 'init-lsp-dart)
(require 'init-lsp-vue)
(require 'init-lsp-html)
(require 'init-lsp-js)
(require 'init-lsp-css)
(require 'init-lsp-c++)
(require 'init-lsp-rust)
(require 'init-lsp-go)
