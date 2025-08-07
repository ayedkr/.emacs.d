(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(use-package doom-themes
  :straight t)
(use-package doom-modeline
  :straight t)
(use-package enlight
  :straight t)
(use-package magit
  :straight t)
(use-package tree-sitter
  :straight t)
(use-package tree-sitter-langs
  :straight t)
(use-package spacious-padding
  :straight t)
(use-package gleam-ts-mode
  :straight t
  :mode (rx ".gleam" eos))


;; Extra non-custom vars
(add-to-list
 'default-frame-alist
 '( font . "JetBrains Mono"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nil)
 '(custom-enabled-themes '(doom-1337))
 '(custom-safe-themes
   '("9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9"
     "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
     "31014fae0ca149e8bbffe40826f8f5952fdb91ea534914622d614b2219e04eaf"
     default))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-bar-width 10)
 '(doom-modeline-buffer-name t)
 '(doom-modeline-check-icon nil)
 '(doom-modeline-height 32)
 '(doom-modeline-hud nil)
 '(doom-modeline-icon nil)
 '(doom-modeline-major-mode-icon nil)
 '(doom-modeline-minor-modes t)
 '(doom-modeline-mode t)
 '(enlight-content "EMACS")
 '(horizontal-scroll-bar-mode nil)
 '(initial-buffer-choice 'enlight)
 '(menu-bar-mode nil)
 '(prog-mode-hook '(display-line-numbers-mode))
 '(scroll-bar-mode nil)
 '(spacious-padding-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
