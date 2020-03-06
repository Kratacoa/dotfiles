;; -*- mode: elisp -*-

;; Additional config directories

(add-to-list 'load-path' "~/.emacs.d/better-defaults/")

;; Load better-defaults

(require 'better-defaults)

;; Enable transient mark mode

(transient-mark-mode 1)

;; Save backup files inside temporary directory

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Show line number
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; Show matching parentheses

(show-paren-mode 1)

;;;  ORG MODE

;; Enable Org mode
(require 'org)

;; Make Org mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Global keybindings
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Setting the org-agenda path
;; (setq org-agenda-files (list "~/org/today.org"
;;                              "~/org/prog1.org")
;;  )


;;; AUCTeX

;; Make AUCTeX aware of style files and multi-file documents
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; Run XeLaTeX instead of pdfTeX
(setq latex-run-command "xelatex")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org djvu auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
