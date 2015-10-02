//
//  CCTask.m
//  Overdue
//
//  Created by Rob Lipp on 2015-09-29.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCTask.h"

@implementation CCTask

-(id)initWithData:(NSDictionary *)data; // Setting up designated initializer
{
    self = [super init]; // Use super initializer first before adding custom initializer
    
    if (self) {
        // If super initializer worked then add the following
        self.title = data[TASK_TITLE];
        self.description = data[TASK_DESCRIPTION];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    
    return self;
}

-(id)init
// This is required when adding a custom designated initializer. If for some reason the user uses the regular initializer then it will go through the designated initializer and set data to nil which will not add all the extra custom initializer stuff. Then returns self. 
{
    self = [self initWithData:nil];
    
    return self;
}

@end
