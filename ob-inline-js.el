;;; ob-inline-js.el --- Functions for inline JS evaluation in org-mode -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Karim Aziiev <karim.aziiev@gmail.com>

;; Author: Karim Aziiev <karim.aziiev@gmail.com>
;; URL: https://github.com/KarimAziev/ob-inline-js
;; Version: 0.1.0
;; Keywords: outlines
;; Package-Requires: ((emacs "24.1"))
;; SPDX-License-Identifier: GPL-3.0-or-later

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Functions for inline js evaluation in org-mode

;;; Code:


(defvar org-babel-default-header-args:inline-js '((:results . "html")
                                                  (:exports . "results")))

(defun org-babel-execute:inline-js (body _params)
  "Wrap BODY in a script tag with type \"text/javascript\".

Argument BODY is the JavaScript code to be executed inline.

Argument _PARAMS is a placeholder for parameters, not used in this function."
  (format "<script type=\"text/javascript\">\n%s\n</script>"
          body))

(provide 'ob-inline-js)
;;; ob-inline-js.el ends here