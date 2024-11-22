.PHONY: link unlink
link:
	ln -sf $(PWD) $(HOME)/.config/nvim

unlink:
	rm -f $(HOME)/.config/nvim
