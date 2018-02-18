;; we have to query and retrieve all the fluents for a domain, and
;; should allow us to update them.  should be derived from KBS2-KE.

(defvar world-state-monitor-buffer-local-context nil)
(make-variable-buffer-local 'world-state-monitor-buffer-local-context)
(defvar world-state-monitor-buffer-local-pretty-print nil)
(make-variable-buffer-local 'world-state-monitor-buffer-local-pretty-print)
(defvar world-state-monitor-buffer-local-command nil)
(make-variable-buffer-local 'world-state-monitor-buffer-local-command)

;; tie this into suppositional-reasoner

(define-derived-mode world-state-monitor-mode
 freekbs2-knowledge-editor-mode "World-State-Monitors"
 "Major mode for rapid manipulation of time dependant facts.
\\{world-state-monitor-mode-map}"
 (setq case-fold-search nil)
 (define-key world-state-monitor-mode-map "we" 'world-state-monitor-edit-world)

 (define-key world-state-monitor-mode-map "ii" 'world-state-monitor-import-inform7)
 (define-key world-state-monitor-mode-map "ip" 'world-state-monitor-import-prolog)
 (define-key world-state-monitor-mode-map "id" 'world-state-monitor-import-pddl)
 (define-key world-state-monitor-mode-map "ei" 'world-state-monitor-export-inform7)
 (define-key world-state-monitor-mode-map "ep" 'world-state-monitor-export-prolog)
 (define-key world-state-monitor-mode-map "ed" 'world-state-monitor-export-pddl)

 (suppress-keymap world-state-monitor-mode-map)
 (make-variable-buffer-local 'world-state-monitor-buffer-local-context))

(defun world-state-monitor-load-world (context)
 ""
 (interactive))

(defun world-state-monitor-edit-world ()
 ""
 (interactive)
 ;; (setq world-state-monitor-buffer-local-context (formalog-query '(isa worldStateMonitorState)))
 ;; (mapcar #'cadr (formalog-query (list 'var-Y) (list "constant_complete" pattern 'var-Y)))
 (world-state-monitor-load-world world-state-monitor-buffer-local-context))

;; (make-frame-on-display)
;; "emacsclient -nw -c"
;; (uxterm +lc -e "screen -x -S flpTerm4 -d -RR emacsclient -nw -c" &)
