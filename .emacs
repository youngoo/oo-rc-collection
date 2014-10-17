;; General

;; show line number
(global-linum-mode 1)
(setq linum-format "%d  ")

;; set theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'molokai t)

;; load package
(add-to-list 'load-path "~/.emacs.d/")
(require 'package)
(add-to-list 'package-archives '("org"."http://orgmode.org/elpa/") t )
(add-to-list 'package-archives '("melpa-stable"."http://melpa-stable.milkbox.net/packages/"))
(package-initialize)

;; setup dash
(add-to-list 'load-path "~/dash")
(autoload 'dash-at-point "dash-at-point" "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)

;;Common LISP

;; setup load-path, autoloads and lisp system
(add-to-list 'load-path "~/Development/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/local/Cellar/sbcl/1.0.55/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(slime-setup)

;; Daily Work

;; set markdown mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'". markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'". markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'". markdown-mode))

;; Org-mod
;; set oo_work
(defun oo_work()
   (interactive)
   (find-file "~/Documents/Dropbox/Org-Mode/oo_work.org"))

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w@/!)" "STARTED(s)" "|" "DONE(d!)" "ASSIGNED(a)")
	(sequence "|" "CANCELED(c@)")))
(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . "yellow")
	("CANCELED" . (:foreground "blue" :weight bold))))
;;(setq org-todo-keywords
;;      '((type "Dora" "Bbo" "Casa" "Kevin" "Michael" "Tomkey" "|" "DONE")))
;;(setq org-log-done 'time)

;;set oo_project
(defun oo_project()
  (interactive)
  (find-file "~/Documents/Dropbox/Org-Mode/oo_project.org"))

;;set oo_note
(defun oo_note()
  (interactive)
  (find-file "~/Documents/Dropbox/Org-Mode/oo_note.org"))

;; set agenda 
(setq org-agenda-files (list "~/Documents/Dropbox/Org-Mode/oo_work.org"
			     "~/Documents/Dropbox/Org-Mode/oo_project.org"))
			 
(setq org-agenda-include-diary t)

;; set orgmode keybinding
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
