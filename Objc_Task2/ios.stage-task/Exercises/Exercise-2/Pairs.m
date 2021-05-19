#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger result = 0;
    NSSet * set = [[NSSet alloc] initWithArray:array];
    
    for (NSNumber * item in set) {
        NSLog(@"First number -> %@", item);
        
        for (NSNumber * value in set) {
            NSLog(@"Second number -> %@", item);
            if ((NSUInteger)([value integerValue] - [item integerValue]) == [number integerValue]) {
                NSLog(@"decision = %li", ([value integerValue] - [item integerValue]));
                result++;
                NSLog(@"result = %lu", result);
            }
        }
    }
//    for (int i = 0; i < array.count; i++) {
//        //result = 0;
//        for (int j = 0; j < array.count; j++) {
//            if (([array[i] integerValue] - [array[j] integerValue]) == [number integerValue]) {
//
//                result++;
//                //NSLog(@"%lu", result);
//            }
//        }
//    }
    return result;
}

@end
