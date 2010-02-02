;;; clojure-mode site-lisp configuration


(add-to-list 'load-path "@SITELISP@")

(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
