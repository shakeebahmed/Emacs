;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

;;Shakeeb's Customizations
(require 'shakeeb-custom)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/vendor/rinari")
(require 'rinari)

;;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/vendor/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
     	  (lambda () (rinari-launch)))

;; Rinari tage
(setq rinari-tags-file-name "TAGS")

;; Color Theme
(color-theme-twilight)

;; Magit - Installed from http://github.com/philjackson/magit
(require 'magit)

;; YaSnippet
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")

(add-to-list 'load-path "~/.emacs.d/vendor/project-mode/")
(require 'project-mode)
(project-load-all)

;;; TwiterMode - http://www.emacswiki.org/emacs/TwitteringMode
(add-to-list 'load-path "~/.emacs.d/vendor/twittering-mode")
(require 'twittering-mode)
;;; (twittering-icon-mode) ;;; Shows profile icons

;; Gnus for GMail
;; (add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
;;                                   (nnimap-address "imap.gmail.com")
;;                                   (nnimap-server-port 993)
;;                                   (nnimap-stream ssl)))

;;(load "gnuserv-compat")
;;(load-library "gnuserv")
;;(gnuserv-start)

;; When loading files reuse existing frames.
(setq gnuserv-frame (car (frame-list)))

;; android-mode
(add-to-list 'load-path "~/.emacs.d/vendor/android-mode")
(require 'android-mode)
;;; (defcustom android-mode-sdk-dir "~/opt/android");; Find out why
;;; this is failing

(global-set-key (kbd "C-x m") 'eshell-command)

;; Scala Mode
(add-to-list 'load-path "~/.emacs.d/vendor/scala-mode")
(require 'scala-mode-auto)
;; (setq yas/my-directory "~/.emacs.d/vendor/scala-mode/contrib/yasnippet/snippets")
;; (yas/load-directory yas/my-directory)

 (add-hook 'scala-mode-hook
           '(lambda ()
              (yas/minor-mode-on)))

(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/.emacs.d/vendor/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; MINI HOWTO: open .scala file. Ensure bin/server.sh is executable. M-x ensime

(global-set-key (kbd "C-x p") 'project-search-text)

;; overrride the normal file-opening, buffer switching
;;(global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
;;(global-set-key (kbd "C-x b")   'lusty-buffer-explorer)

(display-time)

;; SimpleNote Service
(add-to-list 'load-path "~/.emacs.d/vendor/simplenote.el")
(require 'simplenote)
(setq simplenote-email "email")
(setq simplenote-password "password")
(simplenote-setup)

;; ECB
;;(setq ecb-tip-of-the-day nil)
;;(ecb-activate)
;;(setq ecb-tip-of-the-day nil)
;;;(ecb-hide-ecb-windows)

;; EVERNOTE
(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8")) ; option
(add-to-list 'load-path "~/.emacs.d/vendor/evernote-mode")
(require 'evernote-mode)
;;(global-set-key "\C-cec" 'evernote-create-note)
;;(global-set-key "\C-ceo" 'evernote-open-note)
;;(global-set-key "\C-ces" 'evernote-search-notes)
;;(global-set-key "\C-ceS" 'evernote-do-saved-search)
;;(global-set-key "\C-cew" 'evernote-write-note)
;;(global-set-key "\C-cep" 'evernote-post-region)
;;(global-set-key "\C-ceb" 'evernote-browser)


;; Fullscreen
(defun fullscreen ()
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))
(global-set-key [f11] 'fullscreen)
(global-set-key [f9] 'dictionary-search)
