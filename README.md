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
1. register or login a (Launchpad account)[https://launchpad.net]
1. register a GPG key for your account, I was using my Github GPG key for this

referenced articles:

1. https://www.debian.org/doc/manuals/debmake-doc/ch04.en.html
1. https://www.debian.org/doc/manuals/debmake-doc/ch08.en.html#makefile-sh
1. https://github.com/pop-os/popsicle
1. https://www.debian.org/doc/debian-policy/ch-archive.html
1. https://github.com/exelearning/iteexe/wiki/How-to-upload-to-Launchpad-PPA-repository-(.deb-packages)
