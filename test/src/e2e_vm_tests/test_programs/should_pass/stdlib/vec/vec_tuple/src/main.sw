script;

use core::ops::*;
use lib_vec_test::test_all;

impl Eq for (u16, b256) {
    fn eq(self, other: Self) -> bool {
        self.0 == other.0 && self.1 == other.1
    }
}

impl Ord for (u16, b256) {
    fn gt(self, other: Self) -> bool {
        self.0 > other.0
    }

    fn lt(self, other: Self) -> bool {
        self.0 < other.0
    }
}

const B256_0 = 0x0000000000000000000000000000000000000000000000000000000000000000;
const B256_1 = 0x0000000000000000000000000000000000000000000000000000000000000001;
const B256_2 = 0x0000000000000000000000000000000000000000000000000000000000000002;
const B256_3 = 0x0000000000000000000000000000000000000000000000000000000000000003;
const B256_4 = 0x0000000000000000000000000000000000000000000000000000000000000004;
const B256_5 = 0x0000000000000000000000000000000000000000000000000000000000000005;
const B256_6 = 0x0000000000000000000000000000000000000000000000000000000000000006;
const B256_7 = 0x0000000000000000000000000000000000000000000000000000000000000007;
const B256_8 = 0x0000000000000000000000000000000000000000000000000000000000000008;

fn main() -> bool {
    test_all::<(u16, b256)>(
        (0_u16, B256_0),
        (1_u16, B256_1),
        (2_u16, B256_2),
        (3_u16, B256_3),
        (4_u16, B256_4),
        (5_u16, B256_5),
        (6_u16, B256_6),
        (7_u16, B256_7),
        (8_u16, B256_8),
    );

    true
}