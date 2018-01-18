;;; init-company.el --- auto complate use company
;;; Commentary:
;;; Code:


(use-package company
  :diminish company-mode
  :bind (("M-/" . company-complete)
         ("C-c C-y" . company-yasnippet)
         :map company-active-map
         ("C-p" . company-select-previous)
         ("C-n" . company-select-next)
         ("<tab>" . company-complete-selection)
         :map company-search-map
         ("C-p" . company-select-previous)
         ("C-n" . company-select-next))
  :init (add-hook 'after-init-hook #'global-company-mode)
  :config
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 2
        company-tooltip-limit 10
        company-require-match nil
        company-dabbrev-ignore-case nil
        company-dabbrev-downcase nil)

  ;; Popup documentation for completion candidates
  (use-package company-quickhelp
    :if (display-graphic-p)
    :bind (:map company-active-map
                ("M-h" . company-quickhelp-manual-begin))
    :init (company-quickhelp-mode 1)
    :config (setq company-quickhelp-delay 1)))

(provide 'init-company)
;;; init-company.el ends here
