#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    if (!number) {
        return @[];
    }
    
    NSString *string = [number stringValue];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    NSMutableArray *arrayToReturn = [NSMutableArray arrayWithCapacity: string.length];
    
    for (NSInteger index = string.length - 1; index >= 0; index--) {
        UniChar character = [string characterAtIndex:index];
        NSString *charToAdd = [NSString stringWithFormat: @"%c", character];
        NSInteger newIndex = string.length - 1 -index;
        [arrayToReturn insertObject:charToAdd atIndex:newIndex];
    }
    
    return arrayToReturn;
}
@end
