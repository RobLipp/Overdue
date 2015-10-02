//
//  CCTask.h
//  Overdue
//
//  Created by Rob Lipp on 2015-09-29.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCTask : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSDate *date;
@property (nonatomic) BOOL isCompleted;

// Custom initializer
-(id)initWithData:(NSDictionary *)data;

@end
