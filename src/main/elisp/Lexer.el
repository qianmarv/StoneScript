;;
;; 1. Visit File within a buffer
;; 2. Scan word by word and inteprate into tokens

;; Test
;; Identifier: [A-Z_a-z][A-Z_a-z_0-9]*
;; Integer Literal: [0-9]+
;; Operators: ==|<=|>=|&&|\|\|...

 (string-match "\\([A-Z_a-z][A-Z_a-z_0-9]*\\)\\([0-9]+\\)"
               "The quick fox jumped quickly.")



(let ((str "  EF5 = 88"))
  (string-match "\\([A-Z_a-z][A-Z_a-z_0-9]*\\)\\|\\([0-9]+\\)"
                str)
  (list
   (match-beginning 1)
   (match-end 1)))

(let* ((str "A1!= B2;\n\tvar=(5+100);@var2=\"Jack\"")
       (reg_expr "\\([0-9]+\\)\\|\\(\".*\"\\)\\|\\([_A-Z_a-z][A-Z_a-z_0-9]*\\)\\|!=\\|[[:punct:]]\\|[[:space:]]")
       (sub_str str)
       (tokens)
       (match_str "")
       (matched_pos 1)
       (cnt 0)
       (beg_pos 0)
       (end_pos (length str))
       (str_beg_pos beg_pos)
       (str_end_pos end_pos))
  (while (and matched_pos (< cnt 100))
    (progn
      (setq cnt (1+ cnt))
      (setq sub_str (substring sub_str str_beg_pos (length sub_str)))
      
      (setq matched_pos (string-match reg_expr sub_str))
      (when matched_pos
        (progn
      (setq match_str (match-string 0 sub_str))
      (message "matched string: '%s' in '%s'" match_str sub_str)
      (setq beg_pos (match-beginning 0))
      (setq end_pos (match-end 0))
      (message "Is Number: %s" (stringp (match-string 1 sub_str)))
      (cond ((stringp (match-string 1 sub_str)) (setq tokens ())))
      (setq str_beg_pos end_pos))))))

;; Define a function
;;   receives string and line number
;;   returns a list of tokens
;;   Token represented by records



(string-match "\\([A-Z_a-z][A-Z_a-z_0-9]*\\)\\|\\([0-9]+\\)" ".")

(match-string 0 ".")

(let ((sum 0)
      (cnt 0))
  (while (< cnt 100)
    (progn
      (setq cnt (1+ cnt))
      (setq sum (+ sum cnt))))
  sum)

(substring "Heloo" 2 3)
(length "asdf")
                                        ;0123456789
(match-string 0 "The quick for jumped quickly.")

(match-string 1 "The quick for jumped quickly.")

(match-string 2 "The quick for jumped quickly.")

(match-string 3 "The quick for jumped quickly.")

