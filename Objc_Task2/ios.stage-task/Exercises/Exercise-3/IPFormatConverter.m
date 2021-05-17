#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString * string = [NSMutableString new];
    NSString * result = [NSString new];
    if ([numbersArray isEqual:@[]] || numbersArray.count == 0) {
        return @"";
    }
    
    if (numbersArray.count < 5 ) {
        for (int i = 0; i < numbersArray.count; i++) {
            if ([numbersArray[i] integerValue] < 0) {
                NSLog(@"Negative numbers are not valid for input.");
                return @"Negative numbers are not valid for input.";
            } else {
                if ([numbersArray[i] integerValue] > 255) {
                    NSLog(@"The numbers in the input array can be in the range from 0 to 255.");
                    return @"The numbers in the input array can be in the range from 0 to 255.";
                }
            }
        }
        
        if (numbersArray.count < 4) {
            if (numbersArray.count == 1) {
                [string appendFormat:@"%@", numbersArray[0]];
                [string appendString:@".0.0.0"];
            }
            if (numbersArray.count == 2) {
                [string appendFormat:@"%@", numbersArray[0]];
                [string appendFormat:@"%@", numbersArray[1]];
                [string appendString:@".0.0"];
            }
            if (numbersArray.count == 3) {
                [string appendFormat:@"%@", numbersArray[0]];
                [string appendFormat:@"%@", numbersArray[1]];
                [string appendFormat:@"%@", numbersArray[2]];
                [string appendString:@".0"];
            }
            return [string copy];
        }
        
        for (int i = 0; i < numbersArray.count; i++) {
            [string appendFormat:@"%@", numbersArray[i]];
            [string appendString:@"."];
        }
        result = [string substringToIndex: string.length - 1];
        NSLog(@"срезаем длину у %@", result);
        
    }else {
        if (numbersArray.count >= 5) {
            for (int i = 0; i < numbersArray.count; i++) {
                [string appendFormat:@"%@", numbersArray[i]];
            }
            if (string.length < 16) {
                result = [string substringToIndex: string.length];
                NSLog(@"%@", result);
                return result;
            }
        }
    }
    return result;
}

@end
