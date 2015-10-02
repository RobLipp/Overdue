//
//  CCDetailTaskViewController.m
//  Overdue
//
//  Created by Rob Lipp on 2015-09-28.
//  Copyright (c) 2015 Rob Lipp. All rights reserved.
//

#import "CCDetailTaskViewController.h"

@interface CCDetailTaskViewController ()

@end

@implementation CCDetailTaskViewController

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
    
    self.titleLabel.text = self.task.title;
    self.detailLabel.text = self.task.description;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyy-MM-dd"];
    NSString *stringFromDate = [formatter stringFromDate:self.task.date];
    
    self.dateLabel.text = stringFromDate;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[CCEditTaskViewController class]]) {
        CCEditTaskViewController *editTaskViewController = segue.destinationViewController;
        editTaskViewController.task = self.task;
        editTaskViewController.delegate = self;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toEditTaskViewControllerSegue" sender:nil];
}

-(void)didUpdateTask
{
    self.titleLabel.text = self.task.title;
    self.detailLabel.text = self.task.description;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *stringFromDate = [formatter stringFromDate:self.task.date];
    self.dateLabel.text = stringFromDate;
    
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.delegate updateTask];
}



@end
