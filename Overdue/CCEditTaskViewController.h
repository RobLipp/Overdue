//
//  CCEditTaskViewController.h
//  Overdue
//
//  Created by Rob Lipp on 2015-09-28.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTask.h"

@protocol CCEditTaskViewControllerDelegate <NSObject>

-(void)didUpdateTask;

@end

@interface CCEditTaskViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (strong, nonatomic) CCTask *task;

@property (weak, nonatomic) id <CCEditTaskViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender;


@end
