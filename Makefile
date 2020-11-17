prefix = /usr/local

all: src/hello

src/hello:
	cargo build --release --target x86_64-unknown-linux-gnu

install: src/hello
	install -D target/release/deb-rust-hello $(DESTDIR)$(prefix)/bin/deb-rust-hello

clean:
	cargo clean

distclean: clean

uninstall:
	rm -f $(DESTDIR)$(prefix)/bin/deb-rust-hello

.PHONY: all install clean distclean uninstall
