(require 'subr-x)

(require 'package)
(add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   ;; '("melpa" . "http://melpa.milkbox.net/packages/")
   '("melpa" . "https://melpa.org/packages/")
   )
(package-initialize)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets")
      )
(yas-global-mode 1)

(use-package ox-hugo
  :ensure t            ;Auto-install the package from Melpa (optional)
  :after ox)

(use-package easy-hugo
  :init
  (setq easy-hugo-basedir "~/github/easyhugo/")
  (setq easy-hugo-url "https://www.frankliu.org/easyhugo")
  (setq easy-hugo-root "~/github/easyhugo")
  (setq easy-hugo-postdir "content/posts")
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode markdown-mode+ markdown-preview-mode markdown-toc easy-hugo use-package ox-hugo yasnippet-snippets yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
