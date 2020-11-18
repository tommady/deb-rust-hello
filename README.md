# deb-rust-hello
building a rust program into PPA

the journey:

1. install deb building tools like debhelpers
1. using debmake to scaffold the project, 
	need to build a deb-rust-hello.tar compression file in the previous folder, 
	the debmake error will tells you how,
	then simply run *debmake* 
1. write a Makefile
1. follow the popsicle repo to modify the debian/rules file for rust
1. run *debuild* this should be build success
1. register or login a [ Launchpad account ]( https://launchpad.net )
1. register a GPG key for your account, I was using my Github GPG key for this
1. modify the debian/changelog from UNRELEASED to the ubuntu code name, my case is *focal*
1. run *debuild -S -k<your gpg key>* to sign the building
1. go to upper level folder then run *debsign -k <your gpg key> <filename>.changes* to sign the source.changes file
1. now facing the ubuntu build server cannot [ find cargo command ]( https://launchpadlibrarian.net/507624181/buildlog_ubuntu-focal-amd64.deb-rust-hello_0.0.1_BUILDING.txt.gz )
1. found out this [ article ]( https://askubuntu.com/questions/1264696/how-to-build-this-rust-program-in-launchpad-it-fails-to-build ) that I need to vendor the compiling tools up to launchpad...
1. let me cry for a bit... there must be a easy way to do this...
1. after reading this [ article ]( https://help.launchpad.net/Packaging/PPA/BuildingASourcePackage#Depending_on_other_PPAs )
1. I tried to add the [ Mozilla Security Team PPA as my building dependency ]( https://launchpad.net/~ubuntu-mozilla-security/+archive/ubuntu/rust-next/+packages )
1. modify my control file like [ this ]( https://github.com/pop-os/popsicle/blob/master/debian/control ) to add cargo as build-depends
1. dput a new version then the [ build ]( https://launchpad.net/~tommady/+archive/ubuntu/deb-rust-hello/+build/20311444 ) success!

referenced articles:

1. https://www.debian.org/doc/manuals/debmake-doc/ch04.en.html
1. https://www.debian.org/doc/manuals/debmake-doc/ch08.en.html#makefile-sh
1. https://github.com/pop-os/popsicle
1. https://www.debian.org/doc/debian-policy/ch-archive.html
1. https://github.com/exelearning/iteexe/wiki/How-to-upload-to-Launchpad-PPA-repository-(.deb-packages)
