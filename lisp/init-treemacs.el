;;; init-treemacs --- treemacs: a tree layout file explorer for Emacs
;;; Commentary:
;;; Code:

(use-package treemacs
  :ensure t
  :after evil
  :init
  (progn
    (evil-leader/set-key
      "ft" #'treemacs-toggle
      "fT" #'treemacs
      "fB" #'treemacs-bookmark
      "f C-t" #'treemacs-find-file))
  :config
  (progn
    (use-package treemacs-evil
      :ensure t
      :demand t)
    (setq treemacs-change-root-without-asking nil
          treemacs-collapse-dirs              (if (executable-find "python") 3 0)
          treemacs-file-event-delay           5000
          treemacs-follow-after-init          t
          treemacs-goto-tag-strategy          'refetch-index
          treemacs-indentation                2
          treemacs-indentation-string         " "
          treemacs-is-never-other-window      t
          treemacs-never-persist              nil
          treemacs-no-png-images              nil
          treemacs-recenter-after-file-follow nil
          treemacs-recenter-after-tag-follow  nil
          treemacs-show-hidden-files          t
          treemacs-silent-filewatch           nil
          treemacs-silent-refresh             nil
          treemacs-sorting                    'alphabetic-desc
          treemacs-tag-follow-cleanup         t
          treemacs-tag-follow-delay           1.5
          treemacs-width                      35)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-git-mode 'extended)

    ;; (pcase (cons (not (null (executable-find "git")))
    ;;              (not (null (executable-find "python3"))))
    ;;   (`(t . t)
    ;;    (treemacs-git-mode 'extended))
    ;;   (`(t . _)
    ;;    (treemacs-git-mode 'simple)))

    )
  :bind
  (:map global-map
        ([f8]         . treemacs-toggle)
        ("M-0"        . treemacs-select-window)
        ("C-c 1"      . treemacs-delete-other-windows)
        ("C-c ft"     . treemacs-toggle)
        ("C-c fT"     . treemacs)
        ("C-c fB"     . treemacs-bookmark)
        ("C-c f C-t"  . treemacs-find-file)
        ("C-c f M-t"  . treemacs-find-tag)))

(provide 'init-treemacs)
;;; init-treemacs ends here
