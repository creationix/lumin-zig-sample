const std = @import("std");

extern fn printf(msg: [*]const u8, ...) c_int;

pub fn main() void {
    _ = printf("hello lumin  libc\n");
}
