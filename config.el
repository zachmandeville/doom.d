(setq user-full-name "Zach Mandeville"
      user-mail-address "zz@ii.coop")

(setq doom-font (font-spec :family "IBM Plex Mono" :size 12 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "IBM Plex Serif" :size 13)
      doom-big-font (font-spec :family "IBM Plex Serif" :size 26))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(after! vterm
  (set-popup-rule! "*doom:vterm-popup:main" :size 0.35 :vslot -4 :select t :quit nil :ttl 0 :side 'right))

(add-to-list 'exec-path "/Library/PostgreSQL/12/bin/")
(setenv "PATH" (mapconcat 'identity exec-path ":"))

(setq org-directory "~/org/")

(setq org-roam-directory "~/roam")
(require 'company-org-roam)
(use-package company-org-roam
  :when (featurep! :completion company)
  :after org-roam
  :config
  (set-company-backend! 'org-mode '(company-org-roam company-yasnippet company-dabbrev)))

(use-package org-journal
      :bind
      ("C-c n j" . org-journal-new-entry)
      :custom
      (org-journal-dir "~/roam")
      (org-journal-date-prefix "#+TITLE: ")
      (org-journal-file-format "%Y-%m-%d.org")
      (org-journal-date-format "%A, %d %B %Y"))
    (setq org-journal-enable-agenda-integration t)
