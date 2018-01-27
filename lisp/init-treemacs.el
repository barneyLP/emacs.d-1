;;; init-treemacs --- treemacs: a tree layout file explorer for Emacs
;;; Commentary:
;;; Code:

(use-package treemacs
  :config
  (progn
    (use-package treemacs-evil
      :after treemacs)
    (setq treemacs-follow-after-init          t
	  treemacs-width                      35
	  treemacs-position                   'left
	  treemacs-indentation                2
	  treemacs-collapse-dirs              (if (executable-find "python") 3 0)
	  treemacs-silent-refresh             nil
	  treemacs-change-root-without-asking nil
	  treemacs-sorting                    'alphabetic-desc
	  treemacs-show-hidden-files          t
	  treemacs-never-persist              nil
	  treemacs-is-never-other-window      nil
	  treemacs-goto-tag-strategy          'refetch-index)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (pcase (cons (not (null (executable-find "git")))
		 (not (null (executable-find "python3"))))
      (`(t . t)
       (treemacs-git-mode 'extended))
      (`(t . _)
       (treemacs-git-mode 'simple)))))

(use-package treemacs-projectile
  :config
  (setq treemacs-header-function #'treemacs-projectile-create-header))

(provide 'init-treemacs)
;;; init-treemacs ends here
