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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nil)
 '(custom-enabled-themes '(doom-tokyo-night))
 '(custom-safe-themes
   '("826a3324b602b304419d2b88a2a9b39694d68af9987aa64e26f9f8848088e510"
     "4d12469f94f29f44958a3173a74985f1b6aa383f933a49735d07c3304d77c810"
     default))
 '(display-line-numbers-type 'relative)
 '(doom-modeline-bar-width 4)
 '(doom-modeline-check-icon nil)
 '(doom-modeline-height 36)
 '(doom-modeline-hud nil)
 '(doom-modeline-icon nil)
 '(doom-modeline-major-mode-icon nil)
 '(doom-modeline-minor-modes t)
 '(enlight-content "EMACS")
 '(horizontal-scroll-bar-mode nil)
 '(initial-buffer-choice 'enlight)
 '(initial-frame-alist '((font . "Terminus (TTF) for Windows")))
 '(menu-bar-mode nil)
 '(prog-mode-hook '(display-line-numbers-mode))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(variable-pitch ((t (:family "Ubuntu")))))
