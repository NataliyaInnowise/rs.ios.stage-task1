#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if (self.count == 0) {
        return nil;
    }
    
    NSUInteger length = self.count;
    NSUInteger right = length - 1;
    NSUInteger left = 0;
    NSUInteger mid;
    
    while (right > left) {
        mid = left + (right - left) / 2;
        //to compare values not pointers
        if ([self[mid] compare:self[right]] == NSOrderedDescending) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    return self[left];
}
@end
