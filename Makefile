.PHONY: write
write:
	rm -rf ~/.config/nvim
	mkdir ~/.config/nvim
	cp -r * ~/.config/nvim
