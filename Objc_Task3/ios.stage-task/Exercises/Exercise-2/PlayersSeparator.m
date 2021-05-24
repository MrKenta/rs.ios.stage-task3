#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    int count = 0;
       for (int i = 0; i < ratingArray.count; ++i) {
           for (int j = i + 1; j < ratingArray.count; ++j) {
               for (int k = j + 1; k < ratingArray.count; ++k) {
                   int value1 = [[ratingArray objectAtIndex:i]intValue];
                   int value2 = [[ratingArray objectAtIndex:j]intValue];
                   int value3 = [[ratingArray objectAtIndex:k]intValue];
                   if (value1 > value2 > value3) {
                       count += 1;
                   }
                   if (value1 < value2 < value3) {
                       count += 1;
                   }
               }
           }
       }
       return count;
}

@end
