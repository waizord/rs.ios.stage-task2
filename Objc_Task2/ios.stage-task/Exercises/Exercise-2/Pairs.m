#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = 0;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            if (([array[i] integerValue] - [array[j] integerValue]) == [number integerValue]) {
                result++;
                NSLog(@"%lu", result);
            }
        }
    }
    return result;
}

@end
