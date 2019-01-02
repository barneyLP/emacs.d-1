;;; init-keybinds.el --- personal keybinds,should be required finally.
;;; Commentary:
;;; Code:

(kevin/normal-state-prefix "fi" #'kevin/open-init-file)

;; toggle
(kevin/normal-state-prefix
  "tM" 'toggle-major-mode
  "tb" 'toggle-scroll-bar
  "ti" 'imenu-list-smart-toggle
  "tw" 'toggle-word-wrap
  "tm" 'toggle-frame-maximized
  "tf" 'toggle-frame-fullscreen
  "tp" 'persp-mode
  "tt" 'toggle-truncate-lines)

;; open applications with from emacs
(kevin/normal-state-prefix
  "aa" 'counsel-osx-app
  "ai" #'kevin/open-iterm
  "aw" #'kevin/open-wechat
  "ay" #'kevin/open-youdao)

;; misc related keybindings
(kevin/normal-state-prefix
  "=" 'text-scale-increase
  "-" 'text-scale-decrease
  "'" 'shell-pop
  "hd" 'describe-function
  "hf" 'find-function
  "hk" 'describe-key
  "hv" 'describe-variable
  "qr" 'restart-emacs
  "qq" 'save-buffers-kill-terminal)

;; frame releated keybindings
(kevin/normal-state-prefix
  "Fm" #'kevin/make-frame
  "Fd" 'delete-frame)

(provide 'init-keybinds)
;;; init-keybinds ends here
