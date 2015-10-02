//
//  CCViewController.h
//  Overdue
//
//  Created by Rob Lipp on 2015-09-28.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCAddTaskViewController.h"
#import "CCDetailTaskViewController.h"

@interface CCViewController : UIViewController <CCAddTaskViewControllerDelegate, UITableViewDataSource, UITableViewDelegate, CCDetailTaskViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *taskObjects;

@property (strong, nonatomic) IBOutlet UITableView *tableVIew;

- (IBAction)reorderBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)addTaskBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
