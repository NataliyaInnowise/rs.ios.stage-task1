#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    if (number == nil) {
        return @[];
    }

    NSString *string = [number stringValue];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    NSMutableArray *arrayToReturn = [NSMutableArray new];
    
    for (NSInteger index = string.length - 1; index >= 0; index--) {
        UniChar character = [string characterAtIndex:index];
        NSString *charToAdd = [NSString stringWithFormat: @"%c", character];
        [arrayToReturn addObject:charToAdd];
    }
    return arrayToReturn;
}
@end
