;;; init-keybinds.el --- personal keybinds,should be required finally. -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2017-2019  Kevin Leung
;;
;; Author: Kevin Leung <kevin.scnu@gmail.com>
;; URL: https://github.com/lkzz/emacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
;;
;;; Commentary:
;;
;;; Code:

(kevin/declare-prefix "c" "comment")
(kevin/declare-prefix "f" "file")
(kevin/set-leader-keys "fi" #'kevin/open-init-file)
(kevin/declare-prefix "h" "help")
(kevin/declare-prefix "j" "jump")
(kevin/declare-prefix "o" "custom")
(kevin/declare-prefix "p" "project")
(kevin/declare-prefix "q" "quit")
(kevin/declare-prefix "s" "search")

;; toggle
(kevin/declare-prefix "t" "toggle")
(kevin/set-leader-keys "tM" 'toggle-major-mode
                       "tb" 'toggle-scroll-bar
                       "ti" 'imenu-list-smart-toggle
                       "tw" 'toggle-word-wrap
                       ;; "tm" 'toggle-frame-maximized
                       "tf" 'toggle-frame-fullscreen
                       "tp" 'persp-mode
                       "tt" 'toggle-truncate-lines)

;; open applications with from emacs
(kevin/declare-prefix "a" "application")
(kevin/set-leader-keys "ai" #'kevin/open-iterm
                       "aw" #'kevin/open-wechat
                       "ay" #'kevin/open-youdao)

;; misc related keybindings
(kevin/set-leader-keys "=" 'text-scale-increase
                       "-" 'text-scale-decrease
                       "'" 'shell-pop
                       "hd" 'describe-function
                       "hf" 'find-function
                       "hk" 'describe-key
                       "hv" 'describe-variable
                       "qr" 'restart-emacs
                       "qq" 'save-buffers-kill-terminal)

;; frame releated keybindings
(kevin/declare-prefix "F" "frame")
(kevin/set-leader-keys "Fm" #'kevin/make-frame
                       "Fd" 'delete-frame)

(bind-map kevin-default-map
  :keys (kevin-emacs-leader-key)
  :evil-keys (kevin-leader-key))

(provide 'init-keybinds)
;;; init-keybinds ends here
