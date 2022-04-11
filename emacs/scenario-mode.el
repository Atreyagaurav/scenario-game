(defconst scenario-font-lock-keywords-1
  (list
   '("\\<\\([0-9]+\\)\\>" 0 font-lock-function-name-face t)
   '("(\\([0-9]+\\))\\(.*\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-string-face))
   '("\\[\\([0-9]+\\)\\]" 0 font-lock-constant-face t)
   '("<\\(.+?\\)>" 0 font-lock-builtin-face t)
   '("\\<\\(\\n\\)\\>" 0 font-lock-warning-face t)
   )
  
  "Minimal highlighting expressions for Scenario mode")

(defvar scenario-font-lock-keywords scenario-font-lock-keywords-1
  "Default highlighting expressions for Scenario mode")

(define-derived-mode
  scenario-mode
  text-mode
  "SC"
  "Major Mode to edit scenario files"
  (modify-syntax-entry ?\# "< 1b" scenario-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" scenario-mode-syntax-table)
  
  (set (make-local-variable 'font-lock-defaults) '(scenario-font-lock-keywords))

  ;; This will give error on comment line and such. M-;
  ;; (set (make-local-variable 'comment-start) "#")
  ;; (set (make-local-variable 'comment-end) "\n")
  )

;; (font-lock-add-keywords 'scenario-mode
;; 			'(("[\\([0-9]+\\)]" 0 font-lock-keyword-face t)))

(provide 'scenario-mode)
