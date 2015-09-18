;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     markdown
     org
     gnus
     semantic
     emoji
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     syntax-checking
     git
     version-control
     shell-scripts
     scala
     erlang
     elixir
     ess
     sql
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(sql-indent
                                      font-lock+
                                      hlinum
                                      mwim
                                      on-screen
                                      oneonone
                                      ukrainian-holidays
                                      quasi-monochrome-theme
                                      hc-zenburn-theme)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents bookmarks projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(hc-zenburn
                         solarized-light
                         solarized-dark
                         spacemacs-light
                         spacemacs-dark
                         leuven)

   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state nil
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Roboto Mono"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)

   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; Default value is `cache'.
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 70
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here

  ;; setup right and left margins
  (add-hook 'window-configuration-change-hook
            (lambda ()
              (set-window-margins (car (get-buffer-window-list (current-buffer) nil t)) 0 0))))

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (add-to-list 'exec-path "~/.cabal/bin/")
  (golden-ratio-mode 1)
  (on-screen-global-mode +1)
  (whitespace-mode t)
  (delete-selection-mode t)

  (setq golden-ratio-exclude-modes '("ediff-mode"
                                     "term-mode"
                                     "eshell-mode"
                                     "dired-mode"))
  (add-hook 'after-init-hook  #'global-flycheck-mode)

  ;;(add-hook 'prog-mode-hook  'highlight-indentation-current-column-mode)
  (add-hook 'prog-mode-hook  'fci-mode) ; Show  80-column marker
  (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 't)))
  ;; (global-fci-mode t)

  ;; Whitespace wrapping
  (setq-default truncate-lines t)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; Highlighting
  ;; (setq col-highlight-vline-face-flag  t
  ;;       col-highlight-face             hl-line-face)

  ;; SQL Indentation
  (eval-after-load "sql"
    '(load-library "sql-indent"))

  (hlinum-activate)

  ;; move line up/down
  (defun move-line-up () (interactive) (transpose-lines 1) (previous-line 2))
  (defun move-line-down () (interactive) (next-line 1) (transpose-lines 1) (previous-line 1))

  ;; (global-set-key [(alt super up)] 'move-line-up)
  ;; (global-set-key [(alt super down)] 'move-line-down)
  (global-set-key (kbd "M-s-<up>") 'move-line-up)
  (global-set-key (kbd "M-s-<down>") 'move-line-down)

  (global-set-key (kbd "s--") 'senator-unfold-tag)
  (global-set-key (kbd "s-=") 'senator-fold-tag)

  ;; (set-face-attribute 'neo-file-link-face nil :foreground "Light Gray")
  ;; (set-default neo-theme (quote nerd))
  (set-face-attribute 'region nil :inverse-video t)
  (set-face-attribute 'cursor nil :background "DarkSalmon")

  ;; customize my cursor
  (setq cursor-type 'bar
        blink-cursor-delay 0.5
        blink-cursor-interval 0.25
        blink-cursor-blinks 20
        evil-emacs-state-cursor '("Salmon" (bar . 2)))
  (blink-cursor-mode 1)

  ;; Get email, and store in nnml
  (setq gnus-secondary-select-methods
        '(
          (nnimap "gmail"
                  (nnimap-address "imap.gmail.com")
                  (nnimap-server-port 993)
                  (nnimap-stream ssl))
          ))

  ;; Send email via Gmail:
  (setq message-send-mail-function 'smtpmail-send-it
        smtpmail-default-smtp-server "smtp.gmail.com")

  ;; Archive outgoing email in Sent folder on imap.gmail.com:
  (setq gnus-message-archive-method '(nnimap "imap.gmail.com")
        gnus-message-archive-group "[Gmail]/Sent Mail")

  ;; set return email address based on incoming email address
  (setq gnus-posting-styles
        '(((header "to" "Dmitry Nezhinsky") (address "d.nezhinsky@gmail.com"))
          ((header "to" "Dmitry Nezhinsky") (address "d.nezhinsky@gmail.com"))))

  ;; store email in ~/gmail directory
  (setq nnml-directory "~/gmail")
  (setq message-directory "~/gmail")

  ;; disable hl-line-mode for terminal modes
  (add-hook 'eshell-mode-hook (lambda () (setq-local global-hl-line-mode nil)))
  (add-hook 'term-mode-hook (lambda () (setq-local global-hl-line-mode nil))))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(neo-theme (quote nerd)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(neo-dir-link-face ((t (:foreground "#8CAC8C")))))
