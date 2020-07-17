// This is free and unencumbered software released into the public domain.

/// A latitude.
///
/// See: https://dogma.dev/Latitude/
pub const Latitude = extern struct {
    radians: f64,

    const Self = @This();

    pub fn init(radians: f64) Self {
        return Self{ .radians = radians };
    }
};

test "Latitude" { // zig test --main-pkg-path . src/latitude.zig
    const meta = @import("std").meta;
    const testing = @import("std").testing;

    meta.refAllDecls(@This());

    testing.expect(Latitude.init(42).radians == 42);
}
