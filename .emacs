(add-to-list 'load-path "~/.elisp")

; basic one-liners
(set 'indent-tabs-mode nil)
(setq c-basic-offset 2)
(setq tab-width 2)
(setq python-indent 2)
(column-number-mode 1)
(setq initial-scratch-message nil)
(setq line-number-mode t)
(setq column-number-mode t)
(line-number-mode t)
(column-number-mode t)
(global-font-lock-mode t)
(show-paren-mode t)
(setq show-paren-delay 0.0)
(setq show-paren-style 'parenthesis)
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default show-trailing-whitespace t)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(transient-mark-mode t)

; windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

; windmove better keybindings
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "<M-tab>") 'next-buffer)

(global-set-key (kbd "C-x t") 'myterm)

(defun myterm ()
  (interactive)
  (ansi-term "bash" "terminal"))

; ido-mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; Display ido results vertically, rather than horizontally
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

;; To restrict the list after a first filtering: C-SPC.
;; Recently visited directories: type M-p and M-n (or M-UP and M-DOWN)
;  to change to previous/next directories from the history

; TODO ffap other window
; TODO ffap bound to S-Mouse3

; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/harveyj/.elisp//ac-dict")
(ac-config-default)


