#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)
static NSNumberFormatter *customFormatter = nil;

+(NSNumberFormatter *)numberFormatter {
    if (customFormatter) { return customFormatter; }
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
 //   formatter.numberStyle = NSNumberFormatterDecimalStyle;
    customFormatter = formatter;
    return customFormatter;
}

- (BOOL)isValidNumber {
    NSNumber *number = [[[self class] numberFormatter] numberFromString:self];
    
    // return (number != nil);
    return (number) ? YES : NO;
}

@end
