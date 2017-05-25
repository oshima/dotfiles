(defun custom-theme-set-faces-simply (theme &rest args)
  (apply #'custom-theme-set-faces
         theme
         (mapcar #'(lambda (arg)
                     `(,(car arg) ((t (,@(cdr arg))))))
                 args)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(load-theme 'my t)
