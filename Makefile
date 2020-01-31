main: src/main.zig
	zig build-exe src/main.zig -target aarch64v8a-linux-android -lc --libc lumin_libc.txt --release-small --single-threaded --strip

.pushed: main
	mldb push main /system/bin/zig/
	touch .pushed

run: .pushed
	mldb shell /system/bin/zig/main

clean:
	rm -f main main.o .pushed