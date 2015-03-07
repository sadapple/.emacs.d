(package-initialize)   ;; After include this, some other packages like autopair seems to work. Wanna understand the reason behind this.
;;(load-theme 'solarized-dark t)
;;(load-theme 'zenburn t)

;;;;;;;;;;   Set up Chinese input in Emacs, doesn't seem to work ;;;;;;;;;;;;
;; (require 'chinese-pyim)

;; (setq default-input-method "chinese-pyim")
;; (global-set-key (kbd "C-;") 'toggle-input-method)
;; (global-set-key (kbd "C-9") 'pyim-toggle-full-width-punctuation)

;; set ibus-el, also doesn't work = =
;; (global-set-key (kbd "C-;") 'set-mark-command)

;; (add-to-list 'load-path "~/.emacs.d/elpa/")
;; (require 'ibus)  
;; (add-hook 'after-init-hook 'ibus-mode-on)
;; (global-set-key (kbd "C-=") 'ibus-toggle) ;;这里既是绑定上面设置的C+=快捷键到ibus中
;; ;; Change cursor color depending on IBus status
;; (setq ibus-cursor-color '("red" "blue" "limegreen"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq delete-old-versions t)

(global-linum-mode t)
 ;; Display line numbers

;; (add-to-list 'load-path "~/.emacs.d/fill-column-indicator-1.83")
;; (require 'fill-column-indicator)
;; (define-globalized-minor-mode
;;  global-fci-mode fci-mode (lambda () (fci-mode 1)))
;; (global-fci-mode t)
;; set  fill column indicator

(setq default-frame-alist
;;  '((height . 45)(width . 160)(menubar-lines . 0)(tool-bar-lines . 0)))
 '((left . 0) (top . 0)
        (width . 154) (height . 44)(tool-bar-lines . 0)))
 ;; Set the length and width of the initial emacs window

(setq visible-bell t)
;; Close notification sound

(scroll-bar-mode -1)
;; disable scroll bar

 (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; color shell text
 
;;(setq default-major-mode 'text-mode)
;; Set default mode as text-mode


;; (setq kill-ring-max 200)
;; set kill-ring

;;(setq column-number-mode t)
;; set column number, but seems not effective

(global-hl-line-mode 1)   ;; Highlight current row
;; (show-paren-mode 1)   ;; Matches parentheses and such in every mode
;; (set-fringe-mode '(0 . 0))    ;; Disable fringe because I use visual-line-mode
;; (set-face-background hl-line-face "#3e4446")   ;; Q:How to change the color here? 


(setq default-directory "/media/sadapplelc/LC/Dropbox/Workspace/")
 ;; Set default directory, what does this directory used for? 

(global-font-lock-mode t)
;; Syntax Highlighting

(setq enable-recursive-minibuffers t)
;; enable recursive minibuffer

(set-face-attribute 'default nil :height 150 )
 ;; set font size

(global-set-key [mouse-3] 'mouse-buffer-menu)
 ;; right click buffer menu

;;(add-hook 'after-init-hook '(lambda () (w32-send-sys-command #xf030)))
 ;; Maximize the frame

;(when (>= emacs-major-version 24)
 ; (require 'package)
  ;(package-initialize)
  ;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
 ; )
 ;; Set Melpa


;; Add package archive links
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;(add-to-list 'load-path "~/.emacs.d/lisp/")	

;;(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20140414.2324/")  
(require 'auto-complete)
(global-auto-complete-mode t)
 ;; Set global auto-complete, doen't work on current ubuntu... Fixed after include the (package-initialize) line.


;; Set up Smex mode
(require 'smex) ; Not needed if you use package.el
;;(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)  	; Bind some keys for smex mode
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; set autopair mode, having problem
(require 'autopair)
(autopair-global-mode) ;; to enable in all buffers

;; save buffers on exit
(require 'desktop)
;; How to set desktop-restore-eager?
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(background-color "#002b36")
 '(background-mode dark)
 '(blink-cursor-mode nil)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "cd70962b469931807533f5ab78293e901253f5eeb133a46c2965359f23bfb2ea" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "506f807ec189f4c220d4b21d93985a90a765dce5f9acc288fd6aeb43f9fe52f0" default)))
 '(desktop-restore-eager 10)
 '(desktop-save-mode t)
 '(ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters)
     (ess-fl-keyword:=)
     (ess-R-fl-keyword:F&T))))
 '(fci-rule-color "#eee8d5")
 '(foreground-color "#839496")
 '(org-agenda-files
   (quote
    ("/media/Learn/Dropbox/Workspace/Org/log/2015March.org" "/media/Learn/Dropbox/Workspace/Org/Expression.org" "/media/Learn/Dropbox/Workspace/Org/ProbSolving.org" "/media/Learn/Dropbox/Workspace/Org/ProgPrac.org" "/media/Learn/Dropbox/Workspace/Org/Research.org" "/media/Learn/Dropbox/Workspace/Org/Work.org" "/media/Learn/Dropbox/Workspace/Org/Current.org" "/media/Learn/Dropbox/Workspace/Org/Body.org" "/media/Learn/Dropbox/Scratch.org" "/media/Learn/Dropbox/Workspace/Org/Fun.org")))
 '(show-paren-mode t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))
;(desktop-save-mode 1)
(defun my-desktop-save ()
 (interactive)
  ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
  (if (eq (desktop-owner) (emacs-pid))
      (desktop-save desktop-dirname)))
(add-hook 'auto-save-hook 'my-desktop-save)


;; ess mode
 (add-to-list 'load-path "/usr/share/emacs24/site-lisp/ess/")
(require 'ess-site)

;; set ido mode
(require 'ido)
(ido-mode t)

;; set evil mode
(require 'evil)
(evil-mode 1)


;; set YASnippet
;;(yas-load-directory yas-snippet-dir); Load the snippets
(setq yas-snippet-dirs '("~/emacs.d/mysnippets"
                           "/media/Learn/Dropbox/Workspace/snippets"))



;; ;;;;;;;;;;;;;; artbollock mode ;;;;;;;;;;;;;;;;;;;;
;; (require 'artbollocks-mode)
;; (add-hook 'text-mode-hook 'artbollocks-mode)
;; (add-hook 'org-mode-hook 'turn-on-artbollocks-mode)
;; ;; Avoid these phrases
;; (setq weasel-words-regex
;;       (concat "\\b" (regexp-opt
;; 		     '("one of the"
;; 		       "should"
;; 		       "just"
;; 		       "sort of"
;; 		       "a lot"
;; 		       "probably"
;; 		       "maybe"
;; 		       "perhaps"
;; 		       "I think"
;; 		       "really"
;; 		       "pretty"
;; 		       "maybe"
;; 		       "nice"
;; 		       "action"
;; 		       "utilize"
;; 		       "leverage") t) "\\b"))
;; ;; Fix a bug in the regular expression to catch repeated words
;; (setq lexical-illusions-regex "\\b\\(\\w+\\)\\W+\\(\\1\\)\\b")
;; ;; Don't show the art critic words, or at least until I figure
;; ;; out my own jargon
;; (setq artbollocks nil)
;; ;; Make sure keywords are case-insensitive
;; (defadvice search-for-keyword (around sacha activate)
;;   "Match in a case-insensitive way."
;;   (let ((case-fold-search t))
;;     ad-do-it))
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;; Org mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; Set org agenda varaibles
;; (setq org-agenda-files (list "/media/Learn/Dropbox/Workspace/Org/Expression.org"
;;                              "/media/Learn/Dropbox/Workspace/Org/ProbSolving.org"
;; 			     "/media/Learn/Dropbox/Workspace/Org/ProgPrac.org"
;; 			     "/media/Learn/Dropbox/Workspace/Org/Research.org"
;; 			     "/media/Learn/Dropbox/Workspace/Org/Work.org"
;; 			     "/media/Learn/Dropbox/Workspace/Org/Current.org"
;;                              "/media/Learn/Dropbox/Workspace/Org/Body.org"
;; 			     "/media/Learn/Dropbox/Scratch.org"
;; 			     "/media/Learn/Dropbox/Workspace/Org/Fun.org"))					

;; Org interaction with programming languages like R, C, Python, etc.

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (R . t)
   (ruby . t)
   (octave . t)
   (sqlite . t)
   (perl . t)
   (C . t)
   ))



;; Try to enable checkbox for headlines in org mode, seems not work
;; (defun wicked/org-update-checkbox-count (&optional all)
;;   "Update the checkbox statistics in the current section.
;; This will find all statistic cookies like [57%] and [6/12] and update
;; them with the current numbers.  With optional prefix argument ALL,
;; do this for the whole buffer."
;;   (interactive "P")
;;   (save-excursion
;;     (let* ((buffer-invisibility-spec (org-inhibit-invisibility)) 
;; 	   (beg (condition-case nil
;; 		    (progn (outline-back-to-heading) (point))
;; 		  (error (point-min))))
;; 	   (end (move-marker
;; 		 (make-marker)
;; 		 (progn (or (outline-get-next-sibling) ;; (1)
;; 			    (goto-char (point-max)))
;; 			(point))))   
;; 	   (re "\\(\\[[0-9]*%\\]\\)\\|\\(\\[[0-9]*/[0-9]*\\]\\)")
;; 	   (re-box
;; 	    "^[ \t]*\\(*+\\|[-+*]\\|[0-9]+[.)]\\) +\\(\\[[- X]\\]\\)")
;; 	   b1 e1 f1 c-on c-off lim (cstat 0))
;;       (when all
;; 	(goto-char (point-min))
;; 	(or (outline-get-next-sibling) (goto-char (point-max))) ;; (2)
;; 	(setq beg (point) end (point-max)))
;;       (goto-char beg)
;;       (while (re-search-forward re end t)
;; 	(setq cstat (1+ cstat)
;; 	      b1 (match-beginning 0)
;; 	      e1 (match-end 0)
;; 	      f1 (match-beginning 1)
;; 	      lim (cond
;; 		   ((org-on-heading-p)
;; 		    (or (outline-get-next-sibling) ;; (3)
;; 			(goto-char (point-max)))
;; 		    (point))
;; 		   ((org-at-item-p) (org-end-of-item) (point))
;; 		   (t nil))
;; 	      c-on 0 c-off 0)
;; 	(goto-char e1)
;; 	(when lim
;; 	  (while (re-search-forward re-box lim t)
;; 	    (if (member (match-string 2) '("[ ]" "[-]"))
;; 		(setq c-off (1+ c-off))
;; 	      (setq c-on (1+ c-on))))
;; 	  (goto-char b1)
;; 	  (insert (if f1
;; 		      (format "[%d%%]" (/ (* 100 c-on)
;; 					  (max 1 (+ c-on c-off))))
;; 		    (format "[%d/%d]" c-on (+ c-on c-off))))
;; 	  (and (looking-at "\\[.*?\\]")
;; 	       (replace-match ""))))
;;       (when (interactive-p)
;; 	(message "Checkbox statistics updated %s (%d places)"
;; 		 (if all "in entire file" "in current outline entry")
;; 		 cstat)))))
;; (defadvice org-update-checkbox-count (around wicked activate)
;;   "Fix the built-in checkbox count to understand headlines."
;;   (setq ad-return-value
;; 	(wicked/org-update-checkbox-count (ad-get-arg 1))))


;; set up markdown export
(eval-after-load "org"
  '(require 'ox-md nil t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; multiple cursors
(require 'multiple-cursors)
;; When you have an active region that spans multiple lines, the following will add a cursor to each line
 (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; First mark the word, then add more cursors.


;; edit-server, use emacs plugin in chrome
(add-to-list 'load-path "~/.emacs.d/elpa/")
(require 'edit-server)
(edit-server-start)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; set up el-get, having some problems, avoid to use at present
;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;(unless (require 'el-get nil 'noerror)
;  (with-current-buffer
 ;     (url-retrieve-synchronously
  ;     "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
   ; (let (el-get-master-branch)
    ;  (goto-char (point-max))
     ; (eval-print-last-sexp))))
;(el-get 'sync)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python Setup

;; jedi.el setup
 ;; (add-hook 'python-mode-hook 'auto-complete-mode)
 ;; (add-hook 'python-mode-hook 'jedi:ac-setup)

;; flycheck mode
(add-hook 'after-init-hook #'global-flycheck-mode)

; python-mode
;(setq py-install-directory "~/.emacs.d/elpa/python-mode-6.1.3")
;(add-to-list 'load-path py-install-directory)
(require 'python-mode)

; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
; don't split windows
(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
(setq py-smart-indentation t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;; AUCTeX Setup ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; AUCTeX
;; Customary Customization, p. 1 and 16 in the manual, and http://www.emacswiki.org/emacs/AUCTeX#toc2
(setq TeX-parse-self t); Enable parse on load.
(setq TeX-auto-save t); Enable parse on save.
(setq-default TeX-master nil)

(setq TeX-PDF-mode t); PDF mode (rather than DVI-mode)

(add-hook 'TeX-mode-hook 'flyspell-mode); Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode); Enable Flyspell program mode for emacs lisp mode, which highlights all misspelled words in comments and strings.
(setq ispell-dictionary "english"); Default dictionary. To change do M-x ispell-change-dictionary RET.
(add-hook 'TeX-mode-hook
          (lambda () (TeX-fold-mode 1))); Automatically activate TeX-fold-mode.
(setq LaTeX-babel-hyphen nil); Disable language-specific hyphen insertion.

;; " expands into csquotes macros (for this to work babel must be loaded after csquotes).
(setq LaTeX-csquotes-close-quote "}"
      LaTeX-csquotes-open-quote "\\enquote{")

;; LaTeX-math-mode http://www.gnu.org/s/auctex/manual/auctex/Mathematics.html
(add-hook 'TeX-mode-hook 'LaTeX-math-mode)

;;; RefTeX
;; Turn on RefTeX for AUCTeX http://www.gnu.org/s/auctex/manual/reftex/reftex_5.html
(add-hook 'TeX-mode-hook 'turn-on-reftex)

(eval-after-load 'reftex-vars; Is this construct really needed?
  '(progn
     (setq reftex-cite-prompt-optional-args t); Prompt for empty optional arguments in cite macros.
     ;; Make RefTeX interact with AUCTeX, http://www.gnu.org/s/auctex/manual/reftex/AUCTeX_002dRefTeX-Interface.html
     (setq reftex-plug-into-AUCTeX t)
     ;; So that RefTeX also recognizes \addbibresource. Note that you
     ;; can't use $HOME in path for \addbibresource but that "~"
     ;; works.
     (setq reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource"))
;     (setq reftex-default-bibliography '("UNCOMMENT LINE AND INSERT PATH TO YOUR BIBLIOGRAPHY HERE")); So that RefTeX in Org-mode knows bibliography
     (setcdr (assoc 'caption reftex-default-context-regexps) "\\\\\\(rot\\|sub\\)?caption\\*?[[{]"); Recognize \subcaptions, e.g. reftex-citation
     (setq reftex-cite-format; Get ReTeX with biblatex, see http://tex.stackexchange.com/questions/31966/setting-up-reftex-with-biblatex-citation-commands/31992#31992
           '((?t . "\\textcite[]{%l}")
             (?a . "\\autocite[]{%l}")
             (?c . "\\cite[]{%l}")
             (?s . "\\smartcite[]{%l}")
             (?f . "\\footcite[]{%l}")
             (?n . "\\nocite{%l}")
             (?b . "\\blockcquote[]{%l}{}")))))

;; Fontification (remove unnecessary entries as you notice them) http://lists.gnu.org/archive/html/emacs-orgmode/2009-05/msg00236.html http://www.gnu.org/software/auctex/manual/auctex/Fontification-of-macros.html
(setq font-latex-match-reference-keywords
      '(
        ;; biblatex
        ("printbibliography" "[{")
        ("addbibresource" "[{")
        ;; Standard commands
        ;; ("cite" "[{")
        ("Cite" "[{")
        ("parencite" "[{")
        ("Parencite" "[{")
        ("footcite" "[{")
        ("footcitetext" "[{")
        ;; ;; Style-specific commands
        ("textcite" "[{")
        ("Textcite" "[{")
        ("smartcite" "[{")
        ("Smartcite" "[{")
        ("cite*" "[{")
        ("parencite*" "[{")
        ("supercite" "[{")
        ; Qualified citation lists
        ("cites" "[{")
        ("Cites" "[{")
        ("parencites" "[{")
        ("Parencites" "[{")
        ("footcites" "[{")
        ("footcitetexts" "[{")
        ("smartcites" "[{")
        ("Smartcites" "[{")
        ("textcites" "[{")
        ("Textcites" "[{")
        ("supercites" "[{")
        ;; Style-independent commands
        ("autocite" "[{")
        ("Autocite" "[{")
        ("autocite*" "[{")
        ("Autocite*" "[{")
        ("autocites" "[{")
        ("Autocites" "[{")
        ;; Text commands
        ("citeauthor" "[{")
        ("Citeauthor" "[{")
        ("citetitle" "[{")
        ("citetitle*" "[{")
        ("citeyear" "[{")
        ("citedate" "[{")
        ("citeurl" "[{")
        ;; Special commands
        ("fullcite" "[{")))

(setq font-latex-match-textual-keywords
      '(
        ;; biblatex brackets
        ("parentext" "{")
        ("brackettext" "{")
        ("hybridblockquote" "[{")
        ;; Auxiliary Commands
        ("textelp" "{")
        ("textelp*" "{")
        ("textins" "{")
        ("textins*" "{")
        ;; supcaption
        ("subcaption" "[{")))

(setq font-latex-match-variable-keywords
      '(
        ;; amsmath
        ("numberwithin" "{")
        ;; enumitem
        ("setlist" "[{")
        ("setlist*" "[{")
        ("newlist" "{")
        ("renewlist" "{")
        ("setlistdepth" "{")
        ("restartlist" "{")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;; ESS Setup ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Paul Johnson
;; 2013-09-30

;; Workaround for shift-enter trouble on Windows

;; UPDATE: Because Emacs ESS changes made this MUCH easier, my
;; re-work gets shorter :=)


;; INSTRUCTIONS. Put this file in ~/.emacs, or in ~/emacs.d/init.el,
;; or in the Emacs site-start.d folder.

;; R USER PREVIEW.
;; Here are my special features related to ESS with R.

;; 1. Indentation policy follows Programming R Extensions Manual
;; UPDATE 2013-07-10. No longer needed. This is ESS default as of version 13-05

;; 2. Shift+Enter will send the current line to R, and it will start R
;; if it is not running.  ESS 13-05 chose instead CTL+Enter, which I
;; DO NOT want because it conflicts with CUA mode.

;; 3. R will assume the current working directory is the document directory.

;; 4. R runs in its own "frame"

;; 5. Emacs help pops up in its own frame.


;; JUSTIFICATION.  The intention is to make Emacs work more like a
;; "modern" GUI editor.
;; See my companion lecture
;; "Emacs Has No Learning Curve"
;; http://pj.freefaculty.org/guides/Rcourse


;; Paul Johnson <pauljohn@ku.edu>
;; 2012-11-24
;;
;; Conflicts between Emacs-ESS and SAS usage forced me to make
;; some changes. And for no benefit, as SAS mode still not great.
;; I had to cut out a lot of framepop stuff.
;;


;; 2013-07-10 TODO: Find out if this is still necessary, or for
;; which versions of windows.

;; Section I. Windows OS work-arounds

(if (eq system-type 'windows-nt)
    (setq use-file-dialog nil))
;; There's been a chronic problem with file selection dialogs on Windows
;; Maybe you commment previous out and see if your Windows is fixed.



;; Section II. Keyboard and mouse customization

;; IIA: make mouse selection work in the usual Mac/Windows way

;; 2013-07-10 Comment these out
;; (setq shift-select-mode t) ; is default in Emacs 23+, replaces pc-select
;; (transient-mark-mode t) ; highlight text selection, is default Emacs 23+
(delete-selection-mode t) ; delete seleted text when typing


;; http://ergoemacs.org/emacs/emacs24_features.html
;; after copy Ctrl+c in X11 apps, you can paste by `yank' in emacs
;; (setq x-select-enable-clipboard t)

;; after mouse selection in X11, you can paste by `yank' in emacs
;;(setq x-select-enable-primary t)
;; This seems not reliable to me (2013-07-10)

;; TODO:
;; Figure out Emacs-24 trouble with mouse selections. I need to
;; figure out where the truth lies

;; In Linux, I see weirdness in Emacs 24 with paste and clipboard. Confusing!
;; http://stackoverflow.com/questions/13036155/how-to-to-combine-emacs-primary-clipboard-copy-and-paste-behavior-on-ms-windows
(setq select-active-regions t)
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

;;(setq mouse-drag-copy-region t)
;; See following http://emacswiki.org/emacs/CopyAndPaste
;; where there is a ton of really confusing advice.

;; highlight does not alter KILL ring
(setq mouse-drag-copy-region nil)


;; IIB: keyboard customization

;; CUA mode is helpful not only for copy and paste, but also C-Enter is rectangle select
;;(cua-mode t) ; windows style binding C-x, C-v, C-c, C-z
;;(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
;;20130717(setq cua-keep-region-after-copy t) ;; Selection remains after C-c

;; write line numbers on left of window
;; Caution: if you do this, it makes Emacs much slower!
;;(global-linum-mode 1) ; always show line numbers


;; Section III. Programming conveniences:
(show-paren-mode t) ; light-up matching parens
(global-font-lock-mode t) ; turn on syntax highlighting
(setq text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))



;; Section IV. ESS Emacs Statistics

;; start R in current working directory, don't let R ask user
(setq ess-ask-for-ess-directory nil)

;; ESS 13.05 default C-Ret conflicts with CUA mode rectangular selection.
;; Change shortcut to use Shift-Return
;; Suggested by Vitalie Spinu ESS-help email 2013-05-15
;; worked in Linux, not Windows 2013-09-29
;;(define-key ess-mode-map [(control return)] nil)
;;(define-key ess-mode-map [(shift return)] 'ess-eval-region-or-line-and-step)

;; cause "Shift+Enter" to send the current line to *R*
(defun my-ess-eval ()
  (interactive)
  (if (and transient-mark-mode mark-active)
      (call-interactively 'ess-eval-region)
    (call-interactively 'ess-eval-line-and-step)))

(add-hook 'ess-mode-hook
          '(lambda()
             (local-set-key [(shift return)] 'my-ess-eval)))



;; create a new frame for each help instance
;; (setq ess-help-own-frame t)
;; If you want all help buffers to go into one frame do:
(setq ess-help-own-frame 'one)

;; I want the *R* process in its own frame
;; This was a broken feature in ESS, fixed now. Helps massively!
(setq inferior-ess-own-frame t)
;;(setq inferior-ess-same-window nil)

;; See no beauty in this. Test: move pointer into a function
;; Run C-c C-d C-e to see effect
;;(setq ess-describe-at-point-method 'tooltip)

;; PJ 2013-07-10 Following commented out
;; PJ 2012-03-21 because ESS 13.05 made it default
;; Indentation per Programming R Extensions
;; (add-hook 'ess-mode-hook
;;    (lambda ()
;;    (ess-set-style 'C++ 'quiet)
;;    (add-hook 'local-write-file-hooks
;;	      (lambda ()
;;		(ess-nuke-trailing-whitespace)))))
;;;;(setq ess-nuke-trailing-whitespace-p 'ask)
;;;; or even
;;(setq ess-nuke-trailing-whitespace-p t)
;;; Perl
;;(add-hook 'perl-mode-hook
;;	  (lambda () (setq perl-indent-level 4)))
;; End ESS


;; In Spring 2012, we noticed ESS SAS mode doesn't work well
;; at all on Windows, that lead to removal of lots of stuff
;; I really liked. Even then, we couldn't get much satisfaction.
;;
;; Following was needed for that, otherwise, it is not needed
;; (load "ess-site")
;; (ess-sas-global-unix-keys)


;; PJ 2013-02-28
;; stops suggestions in R when tabbing. Quiets noise, but ruins feature
;; (setq completion-auto-help nil)



;; ;; ;; Section V. Customize the use of Frames. Try to make new content
;; ;; ;; appear in wholly new frames on screen.
;; ;; ;;
;; ;; ;; V.A: Discourage Emacs from splitting "frames", encourage it to pop up new
;; ;; ;; frames for new content.
;; ;; ;; see: http://www.gnu.org/software/emacs/elisp/html_node/Choosing-Window.html
;; (setq pop-up-frames t)
;; (setq special-display-popup-frame t)
(setq split-window-preferred-function nil) ;discourage horizontal splits
;; (setq pop-up-windows nil)


;; V.C: Make files opened from the menu bar appear in their own
;; frames. This overrides the default menu bar settings.  Opening an
;; existing file and creating new one in a new frame are the exact
;; same operations.  adapted from Emacs menu-bar.el
(defun menu-find-existing ()
  "Edit the existing file FILENAME."
  (interactive)
  (let* ((mustmatch (not (and (fboundp 'x-uses-old-gtk-dialog)
                              (x-uses-old-gtk-dialog))))
         (filename (car (find-file-read-args "Find file: " mustmatch))))
    (if mustmatch
        (find-file-other-frame filename)
      (find-file filename))))
(define-key menu-bar-file-menu [new-file]
  '(menu-item "Open/Create" find-file-other-frame
	      :enable (menu-bar-non-minibuffer-window-p)
	      :help "Create a new file"))
(define-key menu-bar-file-menu [open-file]
  '(menu-item ,(purecopy "Open File...") menu-find-existing
              :enable (menu-bar-non-minibuffer-window-p)
              :help ,(purecopy "Read an existing file into an Emacs buffer")))


;; V.D  Open directory list in new frame.
(define-key menu-bar-file-menu [dired]
  '(menu-item "Open Directory..." dired-other-frame
	      :help "Read a directory; operate on its files (Dired)"
	      :enable (not (window-minibuffer-p (frame-selected-window menu-updating-frame)))))




;; Section VI: Miscellaneous convenience

;; Remove Emacs "splash screen"
;; http://fuhm.livejournal.com/
(defadvice command-line-normalize-file-name
  (before kill-stupid-startup-screen activate)
  (setq inhibit-startup-screen t))
  (setq inhibit-splash-screen t)


;; Show file name in title bar
;; http://www.thetechrepo.com/main-articles/549
(setq frame-title-format "%b - Emacs")


;; I'm right handed, need scroll bar on right (like other programs)
;;(setq scroll-bar-mode-explicit t)
;;(set-scroll-bar-mode `right)


;; Make Emacs scroll smoothly with down arrow key.
;; 2011-10-14
;; faq 5.45 http://www.gnu.org/s/emacs/emacs-faq.html#Modifying-pull_002ddown-menus
(setq scroll-conservatively most-positive-fixnum)


;; adjust the size of the frames, uncomment this, adjust values
;;(setq default-frame-alist '((width . 90) (height . 65)))


;; Remember password when connected to remote sites via Tramp
;; http://stackoverflow.com/questions/840279/passwords-in-emacs-tramp-mode-editing
;; Emacs "tramp" service (ssh connection) constantly
;; asks for the log in password without this
(setq password-cache-expiry nil)


;; Section : Emacs shells work better
;; http://snarfed.org/why_i_run_shells_inside_emacs
(setq ansi-color-for-comint-mode 'filter)
(setq comint-prompt-read-only t)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)



;;;;;;;;;;;;
;; Scheme 
;;;;;;;;;;;;

(require 'cmuscheme)
(setq scheme-program-name "racket")         ;; 如果用 Petite 就改成 "petite"


;; bypass the interactive question and start the default interpreter
(defun scheme-proc ()
  "Return the current Scheme process, starting one if necessary."
  (unless (and scheme-buffer
               (get-buffer scheme-buffer)
               (comint-check-proc scheme-buffer))
    (save-window-excursion
      (run-scheme scheme-program-name)))
  (or (scheme-get-process)
      (error "No current process. See variable `scheme-buffer'")))


(defun scheme-split-window ()
  (cond
   ((= 1 (count-windows))
    (delete-other-windows)
    (split-window-vertically (floor (* 0.68 (window-height))))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window 1))
   ((not (find "*scheme*"
               (mapcar (lambda (w) (buffer-name (window-buffer w)))
                       (window-list))
               :test 'equal))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window -1))))


(defun scheme-send-last-sexp-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-last-sexp))


(defun scheme-send-definition-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-definition))

(add-hook 'scheme-mode-hook
  (lambda ()
    (paredit-mode 1)
    (define-key scheme-mode-map (kbd "<f5>") 'scheme-send-last-sexp-split-window)
    (define-key scheme-mode-map (kbd "<f6>") 'scheme-send-definition-split-window)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "unknown" :family "Ubuntu Mono")))))
