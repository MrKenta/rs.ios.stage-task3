#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    switch (monthNumber) {
        case 1:
            return @"January";
        case 2:
            return @"February";
        case 3:
            return @"March";
        case 4:
            return @"April";
        case 5:
            return @"May";
        case 6:
            return @"June";
        case 7:
            return @"July";
        case 8:
            return @"August";
        case 9:
            return @"September";
        case 10:
            return @"October";
        case 11:
            return @"November";
        case 12:
            return @"December";
        default:
            break;
    }
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
   
    NSDateFormatter *dataForm = [NSDateFormatter new];
    dataForm.dateFormat =  @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    
    long result  = [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:[dataForm  dateFromString:date]];
    return result;
    
    
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSMutableString *str = [NSMutableString new];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger day;
    NSInteger era;
    NSInteger year;
    NSInteger month;
    [calendar getEra:&era year:&year month:&month day:&day fromDate:date];
    
    if (day == 1) {
        [str appendString:@"Вс"];
    }
    if (day == 2) {
        [str appendString: @"Пн"];
    }
    if (day == 3) {
        [str appendString:@"Вт"];
    }
    if (day == 4) {
        [str appendString: @"Ср"];
    }
    if (day == 5) {
        [str appendString:@"Чт"];
    }
    if (day == 6) {
        [str appendString:@"Пт"];
    }
    if (day == 7) {
        [str appendString:@"Сб"];
    }
    
    return [NSString stringWithString:str];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    return NO;
}

@end
