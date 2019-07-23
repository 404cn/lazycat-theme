;; Set font and size.
(defvar emacs-font-name ""
  "The font name of English.")
(defvar emacs-font-size 14
  "The default font size.")
(cond
 ((featurep 'cocoa)
  (setq emacs-font-name "Monaco"))
 ((string-equal system-type "gnu/linux")
  (setq emacs-font-name "Droid Sans Mono")))
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval emacs-font-name))))

;; Use better titlebar for MacOS.
(when (featurep 'cocoa)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  )

;; Set line height.
(set-face-attribute 'default nil :height 130)

;; Make fringe mini size.
(set-fringe-mode '(0 . 0))

;; Set face variable.
(custom-set-variables
 '(hl-paren-colors (quote ("#F72E70" "#2FBEFF" "#FF6E00" "#AF00FF" "#FF2700")))
 '(imaxima-bg-color "black")
 '(imaxima-equation-color "Green3")
 '(imaxima-fg-color "DarkGreen")
 '(imaxima-fnt-size "Large")
 '(imaxima-label-color "slategrey")
 '(imaxima-max-scale 0.85)
 '(imaxima-pt-size 12)
 '(smiley-style (quote medium))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#dddd00")
 '(tramp-verbose 0)
 )

;; Set face.
(custom-set-faces
 '(default ((t (:background "black" :foreground "#30A339"))))
 '(ac-candidate-face ((t (:background "#191919" :foreground "#878787"))))
 '(ac-clang-candidate-face ((t (:background "#191919" :foreground "#878787"))))
 '(ac-clang-selection-face ((t (:background "darkred" :foreground "grey"))))
 '(ac-completion-face ((t (:foreground "#878787"))))
 '(ac-gtags-candidate-face ((t (:background "#191919" :foreground "#878787"))))
 '(ac-gtags-selection-face ((t (:background "orangered4" :foreground "grey"))))
 '(ac-menu-face ((t (:background "Grey10" :foreground "Grey40"))))
 '(ac-selection-face ((t (:background "darkred" :foreground "grey"))))
 '(ac-yasnippet-candidate-face ((t (:background "#191919" :foreground "#878787"))))
 '(ac-yasnippet-menu-face ((t (:background "Grey10" :foreground "Grey40"))))
 '(ac-yasnippet-selection-face ((t (:background "darkgreen" :foreground "Grey"))))
 '(ace-jump-face-foreground ((t (:background "darkorange" :foreground "black" :box (:line-width 1 :color "#333333") :weight ultra-bold))))
 '(ascii-ascii-face ((((class color) (background dark)) (:background "Black" :foreground "Grey"))))
 '(ascii-non-ascii-face ((((class color) (background dark)) (:background "Black" :foreground "Gold"))))
 '(cal-china-x-priority1-holiday-face ((((class color) (background dark)) (:background "DarkRed" :foreground "White"))))
 '(cal-china-x-priority2-holiday-face ((((class color) (background dark)) (:background "Khaki" :foreground "Black"))))
 '(col-highlight ((t (:background "Grey5"))))
 '(comint-highlight-input ((t (:background "black" :foreground "gold3" :weight bold))))
 '(comint-highlight-prompt ((((min-colors 88) (background dark)) (:foreground "Green"))))
 '(company-preview ((t (:background "#F94949" :foreground "white"))))
 '(company-preview-common ((t (:background "#F94949" :foreground "white"))))
 '(company-preview-search ((t (:background "green4" :foreground "green"))))
 '(company-scrollbar-bg ((t (:background "#303030"))))
 '(company-scrollbar-fg ((t (:background "#404040"))))
 '(company-tooltip ((t (:background "#202020" :foreground "grey"))))
 '(company-tooltip-annotation ((t (:foreground "gold"))))
 '(company-tooltip-annotation-selection ((t (:foreground "white"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "#F94949"))))
 '(company-tooltip-common-selection ((t (:background "gray20" :foreground "#F94949"))))
 '(company-tooltip-selection ((t (:background "gray20" :foreground "#F94949"))))
 '(completion-dynamic-face ((((class color) (background dark)) (:background "DarkOrange" :foreground "black"))))
 '(completion-tooltip-face ((t (:inherit tooltip :background "grey5" :foreground "khaki1"))))
 '(completions-common-part ((t (:foreground "Green3"))))
 '(completions-first-difference ((t (:foreground "Grey60"))))
 '(cursor ((t (:background "red"))))
 '(custom-button ((((type x w32 ns) (class color)) (:background "black" :foreground "#EE8822" :underline t))))
 '(custom-link ((((type x w32 ns) (class color)) (:background "black" :foreground "#EE8822" :underline t))))
 '(custom-comment ((((class grayscale color) (background dark)) (:background "grey5" :foreground "green"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "DodgerBlue" :underline t :weight bold :height 1.2))))
 '(custom-variable-tag ((t (:foreground "gold" :underline t :weight bold))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:background "grey30" :foreground "gold"))))
 '(dired-directory ((t (:inherit font-lock-function-name-face :foreground "DodgerBlue"))))
 '(dired-header ((t (:inherit font-lock-type-face :foreground "gold"))))
 '(dired-ignored ((t (:inherit shadow :foreground "grey50"))))
 '(dired-symlink ((t (:inherit font-lock-keyword-face :foreground "OrangeRed3"))))
 '(diredp-date-time ((t (:foreground "Grey60"))))
 '(diredp-deletion ((t (:background "Black" :foreground "red"))))
 '(diredp-deletion-file-name ((t (:foreground "red"))))
 '(diredp-dir-heading ((t (:background "Black" :foreground "Gold"))))
 '(diredp-dir-priv ((t (:background "Black" :foreground "DodgerBlue"))))
 '(diredp-display-msg ((t (:foreground "Gold"))))
 '(diredp-exec-priv ((t (:background "Black" :foreground "DeepSkyBlue3"))))
 '(diredp-file-name ((t (:foreground "#30A339"))))
 '(diredp-file-suffix ((t (:foreground "Green4"))))
 '(diredp-flag-mark ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-flag-mark-line ((t (:background "Black" :foreground "Cyan"))))
 '(diredp-ignored-file-name ((t (:foreground "grey40"))))
 '(diredp-no-priv ((t (:background "Black" :foreground "Green"))))
 '(diredp-other-priv ((t (:background "Black" :foreground "khaki"))))
 '(diredp-rare-priv ((t (:background "Black" :foreground "Red"))))
 '(diredp-read-priv ((t (:background "Black" :foreground "IndianRed"))))
 '(diredp-write-priv ((t (:background "Black" :foreground "Gold3"))))
 '(egg-diff-hunk-header ((((class color) (background dark)) (:background "grey30" :foreground "Gold"))))
 '(egg-log-HEAD ((t (:background "Black" :foreground "Red"))))
 '(egg-text-help ((t (:inherit egg-text-base :height 0.9))))
 '(eldoc-highlight-function-argument ((t (:inherit bold :foreground "Red"))))
 '(elscreen-tab-background-face ((((type x w32 mac) (class color)) (:background "Black"))))
 '(elscreen-tab-control-face ((((type x w32 mac) (class color)) (:background "Black" :foreground "Green"))))
 '(elscreen-tab-current-screen-face ((((class color)) (:background "DarkRed" :foreground "Grey" :box (:line-width -1 :color "Red" :style released-button)))))
 '(elscreen-tab-other-screen-face ((((type x w32 mac) (class color)) (:background "Black" :foreground "Green3" :box (:line-width -1 :color "Grey20" :style released-button)))))
 '(emms-browser-album-face ((((class color) (background dark)) (:foreground "Green3" :height 1.1))))
 '(emms-browser-artist-face ((((class color) (background dark)) (:foreground "Gold3" :height 1.3))))
 '(emms-browser-track-face ((((class color) (background dark)) (:foreground "khaki3" :height 1.0))))
 '(emms-playlist-selected-face ((t (:foreground "Green"))))
 '(emms-playlist-track-face ((t (:foreground "DarkGreen"))))
 '(eperiodic-d-block-face ((((class color) (background dark)) (:inherit eperiodic-generic-block-face :background "DarkRed" :foreground "White"))))
 '(eperiodic-f-block-face ((((class color) (background dark)) (:inherit eperiodic-generic-block-face :background "DarkRed" :foreground "Grey"))))
 '(eperiodic-generic-block-face ((((class color)) nil)))
 '(eperiodic-group-number-face ((t (:inherit eperiodic-generic-block-face :foreground "grey" :weight bold))))
 '(eperiodic-header-face ((t (:foreground "Gold" :weight bold))))
 '(eperiodic-p-block-face ((((class color)) (:inherit eperiodic-generic-block-face :background "Green4" :foreground "Grey"))))
 '(eperiodic-period-number-face ((t (:foreground "grey" :weight bold))))
 '(eperiodic-s-block-face ((((class color)) (:inherit eperiodic-generic-block-face :background "tan3" :foreground "cornsilk2"))))
 '(erc-direct-msg-face ((t (:foreground "DodgerBlue"))))
 '(erc-input-face ((t (:foreground "Green2"))))
 '(erc-my-nick-face ((t (:foreground "DarkRed" :weight bold))))
 '(erc-notice-face ((t (:foreground "Gray20" :weight bold))))
 '(erc-prompt-face ((t (:background "Black" :foreground "Gold" :weight bold))))
 '(erm-syn-errline ((t (:background "black" :foreground "red" :underline t))))
 '(erm-syn-warnline ((t (:background "black" :foreground "yellow" :underline nil))))
 '(fixme-face ((t (:foreground "orange" :box (:line-width 1 :color "orange") :weight bold))))
 '(flycheck-error-list-highlight ((t (:foreground "orange red"))))
 '(flycheck-posframe-face ((t (:inherit default :foreground "gold"))))
 '(flycheck-posframe-error-face ((t (:background "gray12" :foreground "red3" :box (:line-width 1 :color "grey20")))))
 '(flycheck-posframe-info-face ((t (:inherit flycheck-posframe-face :background "gray12" :box (:line-width 1 :color "grey20")))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "#FF6666"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "gray30"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "#E73C70"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "#999999"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "#F94949"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "#EE8822"))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "Cyan3" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "#DFD67A"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "#E73C70"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "#F94949"))))
 '(font-lock-warning-face ((((class color) (min-colors 88) (background dark)) (:foreground "red" :weight bold))))
 '(fringe ((((class color) (background dark)) (:background "gray3"))))
 '(gnus-button ((t (:foreground "khaki3" :weight bold))))
 '(gnus-cite-1 ((((class color) (background dark)) (:foreground "Grey50"))))
 '(gnus-header-content ((t (:foreground "Green" :slant italic))))
 '(gnus-header-from ((((class color) (background dark)) (:foreground "khaki"))))
 '(gnus-header-name ((((class color) (background dark)) (:foreground "DodgerBlue"))))
 '(gnus-header-subject ((((class color) (background dark)) (:foreground "HotPink"))))
 '(gnus-signature ((t (:foreground "Orange" :slant italic))))
 '(gnus-summary-high-ancient ((t (:foreground "Grey50" :weight bold))))
 '(gnus-summary-high-read ((t (:foreground "Gold2" :weight bold))))
 '(gnus-summary-low-ancient ((t (:foreground "Grey10" :slant italic))))
 '(gnus-summary-low-read ((t (:foreground "Gold4" :slant italic))))
 '(gnus-summary-normal-ancient ((((class color) (background dark)) (:foreground "Grey40"))))
 '(gnus-summary-normal-read ((((class color) (background dark)) (:foreground "khaki2"))))
 '(go-to-char-highlight ((((class color) (background dark)) (:background "Pink" :foreground "Black"))))
 '(header-line ((t (:background "Black" :foreground "Green"))))
 '(helm-buffer-directory ((t (:foreground "DodgerBlue"))))
 '(helm-ff-directory ((t (:background "black" :foreground "dodgerblue"))))
 '(helm-ff-dotted-directory ((t (:foreground "DodgerBlue"))))
 '(helm-ff-dotted-symlink-directory ((t (:foreground "DarkOrange"))))
 '(helm-ff-file ((t (:background "black" :foreground "darkgreen"))))
 '(helm-ff-invalid-symlink ((t (:background "black" :foreground "red"))))
 '(helm-ff-prefix ((t (:background "black" :foreground "yellow"))))
 '(helm-ff-symlink ((t (:foreground "DarkOrange4"))))
 '(helm-selection ((t (:background "darkred" :foreground "grey"))))
 '(helm-source-header ((t (:background "black" :foreground "gold" :underline t :height 1.1))))
 '(helm-visible-mark ((t (:background "darkgreen" :foreground "grey"))))
 '(highlight ((((class color) (min-colors 88) (background dark)) (:background "DarkRed" :foreground "White"))))
 '(highlight-cl ((t (:foreground "#20ABFC" :underline nil))))
 '(highlight-cl-and-other ((t (:foreground "#20ABFC" :underline nil))))
 '(highlight-cl-macro ((t (:underline nil))))
 '(highlight-symbol-face ((((class color) (background dark)) (:background "grey" :foreground "white"))))
 '(hl-line ((t (:background "grey13"))))
 '(hl-sexp-face ((((class color) (background dark)) (:background "gray2"))))
 '(hs-face ((t (:background "DarkRed" :foreground "grey" :box (:line-width 1 :color "grey50")))))
 '(hs-fringe-face ((t (:background "DarkRed" :foreground "grey" :box (:line-width 2 :color "grey75" :style released-button)))))
 '(icicle-candidate-part ((((background dark)) (:background "Black" :foreground "Purple"))))
 '(icicle-complete-input ((((background dark)) (:foreground "Gold"))))
 '(icicle-completion ((((background dark)) (:foreground "Gold"))))
 '(icicle-current-candidate-highlight ((((background dark)) (:background "DarkRed" :foreground "White"))))
 '(icicle-input-completion-fail ((((background dark)) (:background "DarkRed" :foreground "White"))))
 '(icicle-input-completion-fail-lax ((((background dark)) (:background "khaki" :foreground "Black"))))
 '(icicle-match-highlight-Completions ((((background dark)) (:foreground "DodgerBlue1"))))
 '(icicle-multi-command-completion ((((background dark)) (:foreground "Gold"))))
 '(icicle-mustmatch-completion ((((type x w32 mac graphic) (class color)) (:inherit nil))))
 '(icicle-saved-candidate ((((background dark)) (:background "Black" :foreground "khaki"))))
 '(icicle-special-candidate ((((background dark)) (:background "Black" :foreground "Grey"))))
 '(icicle-whitespace-highlight ((((background dark)) (:background "DarkRed"))))
 '(info-elisp-command-ref-item ((t (:background "Black" :foreground "yellow3"))))
 '(info-elisp-function-ref-item ((t (:background "Black" :foreground "Gold3"))))
 '(info-elisp-macro-ref-item ((t (:background "Black" :foreground "Yellow3"))))
 '(info-elisp-reference-item ((t (:background "Black" :foreground "DarkRed"))))
 '(info-elisp-special-form-ref-item ((t (:background "Black" :foreground "OrangeRed2"))))
 '(info-elisp-syntax-class-item ((t (:background "Black" :foreground "Khaki3"))))
 '(info-elisp-user-option-ref-item ((t (:background "Black" :foreground "LawnGreen"))))
 '(info-elisp-variable-ref-item ((t (:background "Black" :foreground "#0048FF"))))
 '(info-file ((t (:background "Black" :foreground "Blue"))))
 '(info-menu ((t (:foreground "DarkRed"))))
 '(info-menu-header ((t (:inherit variable-pitch :foreground "khaki3" :weight bold))))
 '(info-quoted-name ((t (:foreground "Purple"))))
 '(info-string ((t (:foreground "Grey50"))))
 '(info-title-1 ((t (:inherit info-title-2 :foreground "Gold" :height 1.1))))
 '(info-title-2 ((t (:inherit info-title-3 :foreground "red" :height 1.1))))
 '(info-title-3 ((t (:inherit info-title-4 :foreground "DodgerBlue" :height 1.1))))
 '(info-title-4 ((t (:inherit variable-pitch :foreground "Green" :weight bold))))
 '(isearch ((((class color) (min-colors 88) (background dark)) (:background "brown" :foreground "white"))))
 '(isearch-fail ((((class color) (min-colors 88) (background dark)) (:background "red4" :foreground "white"))))
 '(italic ((t (:underline nil :slant normal))))
 '(lazy-highlight ((((class color) (min-colors 88) (background dark)) (:background "grey20"))))
 '(line-number ((t (:background "black" :foreground "gray35"))))
 '(line-number-current-line ((t (:background "black" :foreground "gray70"))))
 '(magit-blame-heading ((t (:foreground "tan4" :slant normal :weight normal))))
 '(magit-blame-highlight ((t (:foreground "tan4"))))
 '(magit-branch-current ((t (:foreground "Dodgerblue" :weight extra-bold))))
 '(magit-branch-remote-head ((t (:foreground "tan3" :weight extra-bold))))
 '(magit-diff-add ((t (:foreground "DodgerBlue1"))))
 '(magit-diff-added ((t (:foreground "gold"))))
 '(magit-diff-added-highlight ((t (:foreground "gold"))))
 '(magit-diff-base ((t (:foreground "#ffffcc"))))
 '(magit-diff-base-highlight ((t (:foreground "#eeeebb"))))
 '(magit-diff-context ((t (:foreground "green3"))))
 '(magit-diff-context-highlight ((t (:foreground "green3"))))
 '(magit-diff-file-heading-highlight ((t (:foreground "green2"))))
 '(magit-diff-hunk-heading ((t (:foreground "grey70"))))
 '(magit-diff-hunk-heading-highlight ((t (:foreground "grey70"))))
 '(magit-diff-lines-boundary ((t (:foreground "rosybrown4"))))
 '(magit-diff-lines-heading ((t (:foreground "rosybrown4"))))
 '(magit-diff-removed ((t (:foreground "red2"))))
 '(magit-diff-removed-highlight ((t (:foreground "darkred"))))
 '(magit-diff-whitespace-warning ((t (:background "red3" :foreground "white"))))
 '(magit-item-highlight ((t (:background "#333333" :foreground "lawn green"))))
 '(magit-log-head-label ((t (:foreground "orange"))))
 '(magit-log-tag-label ((t (:foreground "gold"))))
 '(magit-section-highlight ((t (:background "grey20" :foreground "green"))))
 '(match ((((class color) (min-colors 88) (background dark)) (:background "Black" :foreground "Grey70" :weight extra-bold))))
 '(message-header-subject ((t (:foreground "gold" :weight bold))))
 '(message-header-to ((t (:foreground "DarkRed" :weight bold))))
 '(minibuffer-prompt ((((background dark)) (:foreground "green"))))
 '(mm-uu-extract ((((class color) (background dark)) (:background "Black" :foreground "Gold3"))))
 '(modelinepos-column-warning ((t (:foreground "Yellow"))))
 '(newsticker-date-face ((t (:foreground "red" :slant italic :height 0.8))))
 '(newsticker-default-face ((((class color) (background dark)) (:inherit default))))
 '(newsticker-enclosure-face ((t (:background "orange" :weight bold))))
 '(newsticker-extra-face ((t (:foreground "gray50" :slant italic :height 0.9))))
 '(newsticker-feed-face ((t (:foreground "Green" :weight bold :height 1.2))))
 '(newsticker-immortal-item-face ((t (:foreground "green" :slant italic :weight bold))))
 '(newsticker-new-item-face ((t (:foreground "Gold" :weight bold))))
 '(newsticker-obsolete-item-face ((t (:strike-through t :weight bold))))
 '(newsticker-old-item-face ((t (:foreground "purple" :weight bold))))
 '(newsticker-statistics-face ((t (:foreground "red" :slant italic :height 0.8))))
 '(newsticker-treeview-face ((t (:foreground "Green4" :weight normal))))
 '(newsticker-treeview-new-face ((t (:inherit newsticker-treeview-face :foreground "DodgerBlue" :weight bold))))
 '(newsticker-treeview-old-face ((((class color) (background dark)) (:inherit newsticker-treeview-face :foreground "purple"))))
 '(newsticker-treeview-selection-face ((((class color) (background dark)) (:background "DarkRed" :foreground "White"))))
 '(org-date ((((class color) (background dark)) (:foreground "ivory4" :underline t))))
 '(org-ellipsis ((((class color) (background dark)) (:background "black" :foreground "Cyan" :strike-through nil))))
 '(org-hide ((((background dark)) (:foreground "black"))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "DeepSkyBlue"))))
 '(org-level-5 ((t (:inherit outline-5 :foreground "VioletRed3"))))
 '(org-level-6 ((t (:inherit outline-6 :foreground "violet"))))
 '(org-level-7 ((t (:inherit outline-7 :foreground "khaki3"))))
 '(org-level-8 ((t (:inherit outline-8 :foreground "DarkSeaGreen"))))
 '(org-link ((((class color) (background dark)) (:foreground "Cyan"))))
 '(org-special-keyword ((((class color) (min-colors 16) (background dark)) (:foreground "rosybrown1"))))
 '(org-todo ((t (:foreground "Red" :weight bold))))
 '(pabbrev-suggestions-face ((((class color) (background dark)) (:background "Black" :foreground "khaki1"))))
 '(pabbrev-suggestions-label-face ((t (:background "Black" :foreground "Grey" :inverse-video nil))))
 '(popup-isearch-match ((t (:background "#191919" :foreground "#ffffff"))))
 '(popup-menu-mouse-face ((t (:background "gold" :foreground "white"))))
 '(popup-menu-summary-face ((t (:background "#191919" :foreground "grey"))))
 '(popup-scroll-bar-background-face ((t (:background "#191919"))))
 '(popup-scroll-bar-foreground-face ((t (:background "#393939"))))
 '(popup-summary-face ((t (:background "#191919" :foreground "grey"))))
 '(rcirc-bright-nick ((((class color) (min-colors 88) (background dark)) (:foreground "White"))))
 '(rcirc-dim-nick ((t (:foreground "Grey25"))))
 '(rcirc-keyword ((t (:foreground "khaki" :slant normal :weight ultra-bold))))
 '(rcirc-my-nick ((((class color) (min-colors 88) (background dark)) (:foreground "Green3" :weight semi-bold))))
 '(rcirc-nick-in-message ((((class color) (min-colors 88) (background dark)) (:foreground "Gold"))))
 '(rcirc-nick-in-message-full-line ((t (:underline "grey20"))))
 '(rcirc-other-nick ((((class color) (min-colors 88) (background dark)) (:foreground "tomato"))))
 '(rcirc-prompt ((((min-colors 88) (background dark)) (:foreground "Purple"))))
 '(rcirc-server ((((class color) (min-colors 88) (background dark)) (:foreground "DarkRed"))))
 '(rcirc-server-prefix ((default (:foreground "khaki4")) (((class color) (min-colors 16)) nil)))
 '(rcirc-timestamp ((t (:foreground "grey35"))))
 '(rcirc-track-keyword ((t (:foreground "Yellow" :weight bold))))
 '(rcirc-track-nick ((t (:foreground "Green"))))
 '(rcirc-url ((t (:foreground "Grey50" :weight ultra-light))))
 '(reb-match-0 ((((class color) (background dark)) (:background "khaki3" :foreground "Black"))))
 '(reb-match-1 ((((class color) (background dark)) (:background "dodgerblue3" :foreground "black"))))
 '(reb-match-2 ((((class color) (background dark)) (:background "chartreuse3" :foreground "black"))))
 '(reb-match-3 ((((class color) (background dark)) (:background "sienna3" :foreground "black"))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#3F90F7" :foreground "#FFF"))))
 '(rfcview-headlink-face ((t (:foreground "DodgerBlue"))))
 '(rfcview-headname-face ((t (:foreground "DarkRed" :underline t :weight bold))))
 '(rfcview-headnum-face ((t (:foreground "DarkRed" :weight bold))))
 '(rfcview-mouseover-face ((t (:background "DarkRed" :foreground "white" :weight bold))))
 '(rfcview-rfcnum-face ((t (:foreground "Green3" :weight bold))))
 '(rfcview-stdnum-face ((t (:foreground "Grey" :weight bold))))
 '(rfcview-title-face ((t (:foreground "Gold" :weight bold))))
 '(secondary-selection ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(show-paren-match ((((class color) (background dark)) (:background "green" :foreground "black"))))
 '(show-paren-mismatch ((((class color)) (:background "red" :foreground "white"))))
 '(showtip-face ((((class color)) (:inherit tooltip :background "darkred" :foreground "white" :height 1.4))))
 '(speedbar-file-face ((((class color) (background dark)) (:foreground "SeaGreen2"))))
 '(speedbar-highlight-face ((((class color) (background dark)) (:background "LightGoldenrod" :foreground "black"))))
 '(speedbar-selected-face ((((class color) (background dark)) (:foreground "Cyan" :underline t))))
 '(speedbar-separator-face ((((class color) (background dark)) (:background "DarkRed" :foreground "white" :overline "gray"))))
 '(tooltip ((((class color)) (:inherit variable-pitch :background "DarkRed" :foreground "White"))))
 '(top-mode-mark-face (quote isearch))
 '(vr/group-0 ((t (:background "red" :foreground "black"))))
 '(vr/group-1 ((t (:background "gold2" :foreground "black"))))
 '(vr/group-2 ((t (:background "dodgerblue" :foreground "black"))))
 '(vr/match-0 ((t (:background "green4" :foreground "black"))))
 '(vr/match-1 ((t (:background "green4" :foreground "black"))))
 '(w3m-anchor ((((class color) (background dark)) (:foreground "DodgerBlue2" :underline t))))
 '(w3m-arrived-anchor ((((class color) (background dark)) (:foreground "Purple4" :underline t))))
 '(w3m-bold ((t (:foreground "Green3" :weight bold))))
 '(w3m-current-anchor ((t (:box (:line-width -1 :color "Grey30") :underline t))))
 '(w3m-form ((((class color) (background dark)) (:foreground "Red" :box nil :underline "DarkRed"))))
 '(w3m-form-button ((((type x w32 mac) (class color)) (:background "black" :foreground "LawnGreen" :box (:line-width -1 :color "#014500" :style released-button)))))
 '(w3m-form-button-mouse ((((type x w32 mac) (class color)) (:background "Black" :foreground "Red" :box (:line-width -1 :color "Grey30" :style released-button)))))
 '(w3m-form-button-pressed ((((type x w32 mac) (class color)) (:background "Black" :foreground "DarkRed" :box (:line-width -1 :color "Grey60" :style pressed-button)))))
 '(w3m-form-face ((((class color) (background dark)) (:foreground "khaki2" :underline "brown"))) t)
 '(w3m-header-line-location-content ((((class color) (background dark)) (:background "black" :foreground "Green"))))
 '(w3m-header-line-location-title ((((class color) (background dark)) (:background "black" :foreground "brown"))))
 '(w3m-history-current-url ((t (:background "black" :foreground "DodgerBlue"))))
 '(w3m-image ((((class color) (background dark)) (:background "Black" :foreground "DarkRed"))))
 '(w3m-image-anchor ((((class color) (background dark)) (:background "Black"))))
 '(w3m-link-numbering ((((class color) (background dark)) (:background "Black" :foreground "Grey"))))
 '(w3m-session-select ((((class color) (background dark)) (:foreground "grey50"))))
 '(w3m-tab-background ((((type x w32 mac) (class color)) (:background "black" :foreground "black"))))
 '(w3m-tab-mouse ((((type x w32 mac) (class color)) (:background "DarkRed" :foreground "white" :box (:line-width -1 :color "Red" :style released-button)))))
 '(w3m-tab-selected ((t (:inherit tabbar-default :background "black" :foreground "green2" :box (:line-width 1 :color "#10650F")))))
 '(w3m-tab-selected-background ((((type x w32 mac) (class color)) (:background "black" :foreground "black"))))
 '(w3m-tab-selected-retrieving ((((type x w32 mac) (class color)) (:background "black" :foreground "grey80" :box (:line-width -1 :color "Grey40" :style released-button)))))
 '(w3m-tab-unselected ((t (:inherit tabbar-default :background "black" :foreground "#10650F" :box (:line-width 1 :color "#10650F")))))
 '(w3m-tab-unselected-retrieving ((t (:inherit tabbar-default :background "black" :foreground "grey30" :box (:line-width 1 :color "grey30")))))
 '(w3m-tab-unselected-unseen ((t (:inherit tabbar-default :background "black" :foreground "DodgerBlue" :box (:line-width 1 :color "#10650F")))))
 '(emmet-preview-input ((t (:foreground "gold" :underline t))))
 '(emmet-preview-output ((t (:background "gray10" :foreground "grey80"))))
 '(web-mode-block-attr-name-face ((t (:foreground "#51D117"))))
 '(web-mode-block-face ((t (:background "black"))))
 '(web-mode-comment-face ((t (:foreground "gray30"))))
 '(web-mode-doctype-face ((t (:foreground "Grey50"))))
 '(web-mode-html-attr-equal-face ((t (:foreground "grey50"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#51D117"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "grey50"))))
 '(web-mode-html-tag-face ((t (:foreground "#D10B4C"))))
 '(which-func ((((class color) (min-colors 88) (background dark)) (:foreground "Yellow"))))
 '(whitespace-highlight ((((class color) (background dark)) (:background "yellow2" :foreground "black"))))
 '(widget-field ((((class grayscale color) (background dark)) (:background "grey10" :foreground "DeepSkyBlue"))))
 '(widget-single-line-field ((((class grayscale color) (background dark)) (:background "grey10" :foreground "DeepSkyBlue"))))
 '(woman-addition ((t (:foreground "Gold3"))))
 '(woman-bold ((((background dark)) (:foreground "Green3" :weight bold))))
 '(woman-italic ((((background dark)) (:foreground "DarkRed" :underline t))))
 '(woman-unknown ((((min-colors 88) (background dark)) (:foreground "Cyan3"))))
 '(xgtags-file-face ((((class color) (background dark)) (:foreground "Grey50"))))
 '(xgtags-file-selected-face ((t (:foreground "Grey70" :weight bold))))
 '(xgtags-line-face ((((class color) (background dark)) (:foreground "khaki4"))))
 '(xgtags-line-number-face ((((class color) (background dark)) (:foreground "DarkRed"))))
 '(xgtags-line-number-selected-face ((t (:foreground "Red" :weight bold))))
 '(xgtags-line-selected-face ((t (:foreground "khaki"))))
 '(xgtags-match-face ((((class color) (background dark)) (:foreground "Green4"))))
 '(xgtags-match-selected-face ((t (:foreground "Green" :weight bold))))
 '(xref-keyword-face ((t (:foreground "grey"))) t)
 '(xref-list-pilot-face ((t (:foreground "gold"))) t)
 '(xref-list-symbol-face ((t (:foreground "green"))) t)
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 1.5))))
 '(yas/field-highlight-face ((t (:background "grey20" :foreground "gold"))))
 '(yas/mirror-highlight-face ((t (:background "brown" :foreground "white"))))
 '(rg-file-tag-face ((t (:foreground "blue"))))
 '(rg-filename-face ((t (:foreground "purple"))))
 '(rg-info-face ((t (:foreground "green"))))
 '(rg-match-face ((t (:foreground "gold"))))
 '(epe-dir-face ((t (:foreground "green3"))))
 '(epe-git-face ((t (:foreground "systemRedColor"))))
 '(epe-pipeline-delimiter-face ((t (:foreground "green4"))))
 '(epe-pipeline-host-face ((t (:foreground "systemGreenColor"))))
 '(epe-pipeline-time-face ((t (:foreground "systemGrayColor"))))
 '(epe-pipeline-user-face ((t (:foreground "gold"))))
 '(feebleline-linum-face ((t (:foreground "gray35"))))
 '(feebleline-time-face ((t (:foreground "gray35"))))
 '(feebleline-git-branch-face ((t (:foreground "gray35"))))
 '(button ((t (:foreground "deepskyblue3" :underline t))))
 )

(provide 'lazycat-theme)
