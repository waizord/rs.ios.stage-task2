#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray * revers = [NSMutableArray new];
    UInt8 m = 0;
    for (int i = 0; i < 8; i++) {
        [revers insertObject:[[NSNumber alloc] initWithInteger: n % 2]  atIndex:0];
        n = n / 2;
    }
    for (int j = 0; j < 8; j++) {
        if ([[revers objectAtIndex:j] integerValue] == 1) {
            NSInteger d = [[revers objectAtIndex:j] integerValue] * pow(2, j);
            m = m + d;
        }
    }
    return m;
}
