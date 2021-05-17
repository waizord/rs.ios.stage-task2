#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = 0;
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count; j++) {
            if (([array[i] integerValue] - [array[j] integerValue]) == [number integerValue]) {
                result++;
                NSLog(@"%lu", result);
            }
        }
    }
    return result;
}

@end
