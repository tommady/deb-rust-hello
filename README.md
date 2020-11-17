# deb-rust-hello
building a rust program into PPA

steps:

1. install building tools
1. using debmake to scaffold the project, 
	need to build a deb-rust-hello.tar compression file in the previous folder, 
	the debmake error will tells you how,
	then simply run *debmake* 
1. write a Makefile
1. follow the popsicle repo to modify the debian/rules file for rust
1. run *debuild* 

referenced articles:

1. https://www.debian.org/doc/manuals/debmake-doc/ch04.en.html
1. https://www.debian.org/doc/manuals/debmake-doc/ch08.en.html#makefile-sh
1. https://github.com/pop-os/popsicle
1. https://www.debian.org/doc/debian-policy/ch-archive.html
