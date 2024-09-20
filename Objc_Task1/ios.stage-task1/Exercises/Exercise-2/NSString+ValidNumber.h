#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ValidNumber)
@property (nonatomic, readonly) BOOL isValidNumber;
+(NSNumberFormatter *)numberFormatter;
@end

NS_ASSUME_NONNULL_END
