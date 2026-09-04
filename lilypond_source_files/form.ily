% Shared section-first form assembly for BLO charts.

#(define (form-entry-name entry)
  (if (symbol? entry) entry (car entry)))

#(define (section-property-or-default definitions section-name property default)
  (let ((entry
         (assq property (cdr (section-definition definitions section-name)))))
    (if entry (cdr entry) default)))

#(define (form-entry-property definitions entry property default)
  (let ((override (and (pair? entry) (assq property (cdr entry)))))
    (if override
        (cdr override)
        (section-property-or-default
         definitions (form-entry-name entry) property default))))

#(define (form-entry-section-property definitions entry property)
  (let ((override (and (pair? entry) (assq property (cdr entry)))))
    (if override
        (cdr override)
        (section-property definitions (form-entry-name entry) property))))

#(define (section-definition definitions section-name)
  (let ((section (assq section-name definitions)))
    (if section
        section
        (ly:error "No definition for section ~a" section-name))))

#(define (section-property definitions section-name property)
  (let ((entry
         (assq property (cdr (section-definition definitions section-name)))))
    (if entry
        (cdr entry)
        (ly:error "No ~a value for section ~a" property section-name))))

#(define (assemble-form definitions instrument form)
  (make-sequential-music
   (map
    (lambda (entry)
      (ly:music-deep-copy
       (section-property definitions (form-entry-name entry) instrument)))
    form)))

#(define section-break #{ \break #})
#(define fine-ending #{ \bar "|." #})

#(define (form-barline bar-type)
  (if (string? bar-type)
      #{ \bar #bar-type #}
      (ly:error "bar-after must be a bar-line string, not ~a" bar-type)))

#(define (default-form-label definitions entry index)
  (form-entry-section-property definitions entry 'label))

#(define (form-guide-entry definitions entry index last? label-maker)
  (let* ((section-name (form-entry-name entry))
         (label (label-maker definitions entry index))
         (break-after
          (form-entry-property definitions entry 'break-after #t))
         (bar-after
          (form-entry-property definitions entry 'bar-after #f))
         (fine-after
          (form-entry-property definitions entry 'fine-after #f)))
    (make-sequential-music
     (append
      (if label (list (ly:music-deep-copy label)) '())
      (list
       (ly:music-deep-copy
        (section-property definitions section-name 'guide)))
      (cond
       (fine-after (list (ly:music-deep-copy fine-ending)))
       (bar-after (list (form-barline bar-after)))
       (else '()))
      (if (and break-after (not last?))
          (list (ly:music-deep-copy section-break))
          '())))))

#(define (assemble-form-guide definitions form label-maker)
  (make-sequential-music
   (let loop ((entries form) (index 0))
     (if (null? entries)
         '()
         (cons
          (form-guide-entry
           definitions (car entries) index (null? (cdr entries)) label-maker)
          (loop (cdr entries) (+ index 1)))))))
