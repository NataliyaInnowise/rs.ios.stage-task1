#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray: rankedArray];
    NSArray <NSNumber *> *uniqueArray = [orderedSet array];
    
    NSMutableArray <NSNumber *> *resultArray = [NSMutableArray new];
    
    
    for (NSNumber *playerScore in playerArray) {
        NSInteger rank = [self calculateRankForScore:playerScore inRankedArray:uniqueArray];
        [resultArray addObject:@(rank)];
    }
    
    return resultArray;
}

- (NSInteger)calculateRankForScore:(NSNumber *)playerScore inRankedArray:(NSArray<NSNumber *> *)rankedArray {
    
    NSInteger rank = 1;
    for (NSNumber *rankedScore in rankedArray) {
        if ([playerScore intValue] >= [rankedScore intValue]) {
            return rank;
        } else {
            rank++;
        }
    }
    return rank;
}

@end
