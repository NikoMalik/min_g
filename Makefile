fast:
	@zig build -Doptimize=ReleaseFast

test:
	@zig build test

small_wayland:
	@zig build  -Dapp-runtime=glfw -Duse_x11=false -Duse_wl=true -Doptimize=ReleaseFast

	
small_x11:
	@zig build  -Dapp-runtime=glfw -Dx11=true -Dwayland=false -Doptimize=ReleaseFast

try: fast
	@./zig-out/bin/ghostty


init_wayland:
	@zig build -p $HOME/.local -Dapp-runtime=glfw -Dx11=false -Dwayland=true -Doptimize=ReleaseFast

init_x11:
	@zig build -p $HOME/.local -Dapp-runtime=glfw -Dx11=true -Dwayland=false -Doptimize=ReleaseFast

	

debug:
	@zig build -Doptimize=Debug

clean:
	@rm -rf .zig-cache/



prof: clean debug run
	


run:
	@./zig-out/bin/ghostty
