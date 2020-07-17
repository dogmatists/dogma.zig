// This is free and unencumbered software released into the public domain.

/// A longitude.
///
/// See: https://dogma.dev/Longitude/
pub const Longitude = extern struct {
    radians: f64,

    const Self = @This();

    pub fn init(radians: f64) Self {
        return Self{ .radians = radians };
    }
};

test "Longitude" { // zig test --main-pkg-path . src/longitude.zig
    const meta = @import("std").meta;
    const testing = @import("std").testing;

    meta.refAllDecls(@This());

    testing.expect(Longitude.init(42).radians == 42);
}
