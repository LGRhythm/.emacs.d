(use-package org
  :bind (
	 ("C-c a" . 'org-agenda)
	 ("C-c r" . 'org-capture))
  :config
  (setq org-agenda-files '("~/.emacs.d/"))
  (setq org-src-fontify-natively t)
  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "~/.emacs.d/schedule.org" "Schedule")
	   "* TODO [#B] %?\r\n %i\r\n"
	   :empty-lines 1))))

(provide 'init-org)
