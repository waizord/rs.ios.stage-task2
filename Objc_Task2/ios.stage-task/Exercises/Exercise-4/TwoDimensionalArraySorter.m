#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray * result = [NSMutableArray new];
    NSMutableArray * strings = [NSMutableArray new];
    NSMutableArray * numbers = [NSMutableArray new];
    NSArray * sortStrings = [NSArray new];
    NSArray * sortNumbers = [NSArray new];
    
    
    NSLog(@"%@", array.class);
    
    if (![array isKindOfClass:NSArray.class]) {
        NSLog(@"The object isn't array!");
        return @[];
    }else{
        for (id valueArray in array) {
            NSLog(@"is Equal class the first obj and each next? -> %d", [[valueArray class] isEqual:array[0].class]);
            
            if ([[valueArray class] isEqual:array[0].class] && [array[0] isKindOfClass:NSArray.class]) {
                for (id value in valueArray) {
                    NSLog(@"value %@", value);
                    
                    NSLog(@"is String? -> %d", [value isKindOfClass:NSString.class]);
                    NSLog(@"is Number? -> %d", [value isKindOfClass:NSNumber.class]);
                    
                    if ([value isKindOfClass:NSString.class]) {
                        [strings addObject:value];
                    } else {
                        if ([value isKindOfClass:NSNumber.class]) {
                            [numbers addObject:value];
                        }
                    }
                }
                NSLog(@"Strings are before to sorted %@", strings);
                NSLog(@"Numbers are before to sorted %@", numbers);
            } else {
                NSLog(@"%@This array doesn't have equal objects", array);
                return @[];
            }
        }
    }
    
    sortStrings = [strings sortedArrayUsingSelector:@selector(compare:)];
    sortNumbers = [numbers sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"sort strings is %@", sortStrings);
    NSLog(@"sort numbers is %@", sortNumbers);
    
    if ([sortNumbers isEqual:@[]]) {
        NSLog(@"sort result is %@", sortStrings);
        return sortStrings;
    } else {
        if ([sortStrings isEqual:@[]]) {
            NSLog(@"sort result is %@", sortNumbers);
            return sortNumbers;
        } else {
            [result addObject:sortNumbers];
            sortStrings = [strings sortedArrayUsingSelector:@selector(compare:)];
            NSMutableArray * revers = [NSMutableArray new];
            for (id item in [sortStrings reverseObjectEnumerator]) {
                [revers addObject:item];
            }
            [result addObject:revers];
        }
    }

    NSLog(@"sort result is %@", result);
    NSLog(@"Class result is %d", [result isKindOfClass:NSArray.class]);
    NSLog(@"Class copy result is %d", [[result copy] isKindOfClass:NSArray.class]);
    return [result copy];
}

@end
