;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t)
  )

(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key (kbd "C-x DEL") 'pop-global-mark)
(global-set-key (kbd "C-x |") 'split-window-right)
(global-set-key (kbd "C-x -") 'split-window-below)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

