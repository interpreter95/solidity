contract C {
    function f() public pure returns (fixed[2] memory ret) {
        ret[0] = 0.00000000000001;
        ret[1] = 11111111111111.1;
    }
    function g() public pure returns (fixed[] memory ret) {
        ret = new fixed[](3);
        ret[0] = 998.888888;
        ret[1] = 44.1100000000011;
        ret[2] = 888888888888888888.4400001;
    }
}
// ====
// compileViaYul: also
// ----
// f() -> 10000, 11111111111111100000000000000000
// g() -> 0x20, 3, 998888888000000000000, 44110000000001100000, 888888888888888888440000100000000000
