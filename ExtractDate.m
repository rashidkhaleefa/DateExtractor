//
//  ExtractDate.m
//  dictionaryTest
//
//  Created by rashid khaleefa on 16/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ExtractDate.h"

@implementation ExtractDate
@synthesize year,month,day;

-(NSInteger)year:(NSDate*)dateValue
{
	unsigned units = NSYearCalendarUnit;
	NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *components = [calendar components:units fromDate:dateValue];
	
	return [components year];
}
-(NSInteger)month:(NSDate*)dateValue
{
	unsigned units = NSMonthCalendarUnit;
	NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *components = [calendar components:units fromDate:dateValue];
	
	return [components month];
}
-(NSInteger)day:(NSDate*)dateValue
{
	unsigned units = NSDayCalendarUnit;
	NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *components = [calendar components:units fromDate:dateValue];
	
	return [components day];
}

-(NSString*)MonthName:(NSDate*)dateValue{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MMMM"];
    NSString *MonthNameFromDate = [formatter stringFromDate:dateValue];
    [formatter release];
    
    NSLog(@"%@", MonthNameFromDate);
    return MonthNameFromDate;
}
-(NSString*)YearName:(NSDate*)dateValue{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    [formatter setDateFormat:@"YYYY"];
    NSString *MonthNameFromDate = [formatter stringFromDate:dateValue];
    [formatter release];
    
    NSLog(@"%@", MonthNameFromDate);
    return MonthNameFromDate;
}
-(NSString*)DayName:(NSDate*)dateValue{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"EEEE"];
    NSString *MonthNameFromDate = [formatter stringFromDate:dateValue];
    [formatter release];
    
    NSLog(@"%@", MonthNameFromDate);
    return MonthNameFromDate;
}
@end
