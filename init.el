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

(straight-use-package 'doom-themes)
(straight-use-package 'doom-modeline)
(straight-use-package 'enlight)
(straight-use-package 'magit)
(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)
(straight-use-package 'spacious-padding)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nil)
 '(custom-enabled-themes '(doom-1337))
 '(custom-safe-themes
   '("014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
     "31014fae0ca149e8bbffe40826f8f5952fdb91ea534914622d614b2219e04eaf"
     default))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-bar-width 10)
 '(doom-modeline-buffer-name t)
 '(doom-modeline-check-icon nil)
 '(doom-modeline-height 64)
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
(custom-set-faces)
