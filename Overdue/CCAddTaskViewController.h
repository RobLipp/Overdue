//
//  CCAddTaskViewController.h
//  Overdue
//
//  Created by Rob Lipp on 2015-09-28.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTask.h"

@protocol CCAddTaskViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didAddTask:(CCTask *)task;

@end

@interface CCAddTaskViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) id <CCAddTaskViewControllerDelegate> delegate; // Delegate property variable

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;


- (IBAction)addTaskButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;



@end
