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
(doom-modeline-mode 1)
(straight-use-package 'enlight)
(straight-use-package 'magit)
(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)
(straight-use-package 'spacious-padding)

(cond
 ((eq system-type 'gnu/linux) (add-to-list 'default-frame-alist '(font . "Terminus"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nil)
 '(custom-enabled-themes '(doom-1337))
 '(custom-safe-themes
   '("014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738" "dca64882039075757807f5cead3cee7a9704223fab1641a9f1b7982bdbb5a0e2" "31014fae0ca149e8bbffe40826f8f5952fdb91ea534914622d614b2219e04eaf" default))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-bar-width 4)
 '(doom-modeline-buffer-name t)
 '(doom-modeline-check-icon nil)
 '(doom-modeline-height 36)
 '(doom-modeline-hud nil)
 '(doom-modeline-icon nil)
 '(doom-modeline-major-mode-icon nil)
 '(doom-modeline-minor-modes t)
 '(doom-modeline-mode t)
 '(doom-old-hope-padded-modeline nil)
 '(doom-themes-padded-modeline nil)
 '(enlight-content "EMACS")
 '(horizontal-scroll-bar-mode nil)
 '(initial-buffer-choice 'enlight)
 '(menu-bar-mode nil)
 '(prog-mode-hook '(display-line-numbers-mode))
 '(scroll-bar-mode nil)
 '(spacious-padding-mode t)
 '(spacious-padding-widths
   '(:internal-border-width 15 :header-line-width 4 :mode-line-width 0 :tab-width 4 :right-divider-width 30 :scroll-bar-width 8 :fringe-width 8))
 '(tab-bar-close-button-show nil)
 '(tab-bar-format
   '(tab-bar-format-menu-bar tab-bar-format-history tab-bar-format-tabs tab-bar-separator))
 '(tab-bar-mode nil)
 '(tab-line-close-button-show nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((t (:family "Ubuntu")))))
