//
//  CCAddTaskViewController.m
//  Overdue
//
//  Created by Rob Lipp on 2015-09-28.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCAddTaskViewController.h"

@interface CCAddTaskViewController ()

@end

@implementation CCAddTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textView.delegate = self;
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Helper method to return a CCTask object.
-(CCTask *)returnNewTaskObject
{
    CCTask *taskObject = [[CCTask alloc] init];
    taskObject.title = self.textField.text;
    taskObject.description = self.textView.text;
    taskObject.date = self.datePicker.date;
    taskObject.isCompleted = NO;
    
    return taskObject;
}

- (IBAction)addTaskButtonPressed:(UIButton *)sender
{
    [self.delegate didAddTask:[self returnNewTaskObject]];
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder]; // Makes keyboard go away
    return YES;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [self.textView resignFirstResponder];
        return NO;
    }
    return YES;
}




@end
