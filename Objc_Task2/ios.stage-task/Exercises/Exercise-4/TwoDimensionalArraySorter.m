#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSArray * result = [NSArray new];
    NSMutableArray * strings = [NSMutableArray new];
    NSMutableArray * numbers = [NSMutableArray new];
    NSMutableArray * check = [NSMutableArray new];
    NSArray * sort = [NSArray new];
    
    NSLog(@"%@", array.class);
    
    if (![array isKindOfClass:NSArray.class]) {
        NSLog(@"The object isn't array!");
        return @[];
    }else{
        for (id valueArray in array) {
            NSLog(@"is Equal class the first obj and each next? -> %d", [[valueArray class] isEqual:array[0].class]);
            
            if ([array[0].class isEqual:array[1].class]) {
                for (id value in valueArray) {
                    NSLog(@"value %@", value);
                    
                    NSLog(@"is String? -> %d", [value isKindOfClass:NSString.class]);
                    NSLog(@"is Number? -> %d", [value isKindOfClass:NSNumber.class]);
                    
                    if ([value isKindOfClass:NSString.class]) {
                        [check addObject:value];
                    } else {
                        if ([value isKindOfClass:NSNumber.class]) {
                            [check addObject:value];
                        }
                    }
                }
                NSLog(@"before to sorted %@", check);
            } else {
                NSLog(@"%@This array doesn't have equal objects", array);
                return @[];
            }
        }
        
        for (id item in check) {
            if ([[item class] isEqual: [check[0] class]]){
                NSLog(@"The first obj of array is equal each next obj");
            }else{
                NSLog(@"The first obj of array isn't equal any obj");
                return @[];
            }
        }
    }
    
    sort = [check sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"sort result is %@", sort);
    NSLog(@"%@", sort.class);
    return sort;
}

@end
