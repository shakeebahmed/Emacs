(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
( global-set-key (kbd "M-9") 'close-all-buffers)
(provide 'shakeeb-custom)

