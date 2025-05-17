fast:
	@zig build -Doptimize=ReleaseFast

small:
	@zig build -Doptimize=ReleaseSmall

test:
	@zig build test  

try: fast
	@./zig-out/bin/ghostty


init:
	@zig build -p $HOME/.local -Doptimize=ReleaseFast
	

debug:
	@zig build -Doptimize=Debug

clean:
	rm -rf \
		zig-out zig-cache \
		macos/build \
		macos/GhosttyKit.xcframework


prof: clean debug run
	


run:
	@./zig-out/bin/ghostty
