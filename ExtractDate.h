//
//  ExtractDate.h
//  dictionaryTest
//
//  Created by rashid khaleefa on 16/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExtractDate : NSObject
@property (nonatomic, readonly) NSInteger year;
@property (nonatomic, readonly) NSInteger month;
@property (nonatomic, readonly) NSInteger day;
-(NSInteger)year:(NSDate*)dateValue;
-(NSInteger)month:(NSDate*)dateValue;
-(NSInteger)day:(NSDate*)dateValue;
-(NSString*)MonthName:(NSDate*)dateValue;
-(NSString*)YearName:(NSDate*)dateValue;
-(NSString*)DayName:(NSDate*)dateValue;
@end
