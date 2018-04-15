;;; init-elfeed.el --- setup Emacs web feeds client.

;;; Commentary:
;;; Code:

(use-package elfeed
  :ensure t
  :bind (:map elfeed-search-mode-map
              ("A" . bjm/elfeed-show-all)
              ("E" . bjm/elfeed-show-emacs)
              ("D" . bjm/elfeed-show-daily)
              ("q" . bjm/elfeed-save-db-and-bury)))

;; use an org file to organise feeds
(use-package elfeed-org
  :ensure t
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "/path/to/elfeed.org")))

(provide 'init-elfeed)
;;; init-elfeed.el ends here