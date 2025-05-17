fast:
	@zig build -Doptimize=ReleaseFast

test:
	@zig build test  

try: fast
	@./zig-out/bin/ghostty 
	

debug:
	@zig build -Doptimize=Debug

clean:
	@rm -rf .zig-cache/



prof: clean debug run
	


run:
	@./zig-out/bin/ghostty
