#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
   // NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    NSNumber *number = [numberFormatter numberFromString:self];
    
   // return (number != nil);
    if (number) {
        return true;
    } else {
        return false;
    }
}

@end
