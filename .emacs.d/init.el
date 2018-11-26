(package-initialize)
(add-to-list 'load-path "~/.emacs.d/go-customize/")

;; load emacs 24's package system. Add MELPA repository.
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa-stable" . "http://stable.melpa.org/packages/")
   t)
  )

;; Key bindings
(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key (kbd "C-x DEL") 'pop-global-mark)
(global-set-key (kbd "C-x |") 'split-window-right)
(global-set-key (kbd "C-x -") 'split-window-below)
(global-set-key (kbd "C-x /") 'comment-region)
(global-set-key (kbd "C-c /") 'uncomment-region)
(global-set-key (kbd "C-x w") 'kill-region)

;; python related config
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


;; go related config
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gofmt-command "goimports"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(global-flycheck-mode)

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)


;; column number mode
(setq column-number-mode t)
