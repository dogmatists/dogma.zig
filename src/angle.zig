// This is free and unencumbered software released into the public domain.

/// An angle.
///
/// See: https://dogma.dev/Angle/
pub const Angle = extern struct {
    radians: f64,

    const Self = @This();

    pub fn init(radians: f64) Self {
        return Self{ .radians = radians };
    }
};

test "Angle" { // zig test --main-pkg-path . src/angle.zig
    const meta = @import("std").meta;
    const testing = @import("std").testing;

    meta.refAllDecls(@This());

    testing.expect(Angle.init(2).radians == 2);
}
