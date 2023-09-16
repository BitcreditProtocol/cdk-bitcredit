precommit:
	rustup default stable
	cargo fmt
	cargo check -p cashu
	cargo check -p cashu-sdk --no-default-features --features mint
	cargo check -p cashu-sdk --no-default-features --features wallet
	cargo check -p cashu-sdk --no-default-features --features blocking
	typos
	cargo test -p cashu
	cargo test -p cashu-sdk
	cargo clippy
	rustup default 1.67.0
	cargo check -p cashu
	cargo check -p cashu-sdk --no-default-features --features mint
	cargo check -p cashu-sdk --no-default-features --features wallet
	cargo check -p cashu-sdk --no-default-features --features blocking
	cargo test -p cashu
	cargo test -p cashu-sdk
	rustup default stable