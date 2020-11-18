prefix = /usr/local

all: src/hello

src/hello:
	cargo build --release --target x86_64-unknown-linux-gnu

install: src/hello
	install -D target/x86_64-unknown-linux-gnu/release/deb-rust-hello \
		$(DESTDIR)$(prefix)/bin/deb-rust-hello
	install -D testing.sh $(DESTDIR)$(prefix)/bin/testing.sh

clean:
	cargo clean

distclean: clean

uninstall:
	rm -f $(DESTDIR)$(prefix)/bin/deb-rust-hello
	rm -f $(DESTDIR)$(prefix)/bin/testing.sh

.PHONY: all install clean distclean uninstall
