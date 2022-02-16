(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(pylint smartparens jedi omnisharp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.org/packages/"))
(package-initialize)(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   

;;;;;;;;;;;python;;;;;;;;;;;;
(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook #'flycheck-python-setup)

;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;
;; enable clipboard
(setq x-select-enable-clipboard t)
;; disable parentheses highlighting
(setq blink-matching-paren nil)
;; autocomplete paired brackets
(electric-pair-mode 1)
(global-set-key [C-tab] 'other-window)
;; tramp mode for editing through ssh
(setq tramp-default-method "ssh")
;;;;;;;;;;;; misc ;;;;;;;;;;;;;;;;;;;;;;;
