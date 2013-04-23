//
//  ViewController.m
//  ControlsUIDatePicker
//
//  Created by Jackman on 4/2/13.
//  Copyright (c) 2013 Jackman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDate *now = [NSDate date];
    [[self datePicker] setDate:now animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setDatePicker:nil];
    [self setBtnPressed:nil];
    [super viewDidUnload];
}

- (IBAction)buttonPressed:(id)sender {
    
    NSDate * selected = [[self datePicker] date];
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm +0800"];
    
    NSString *destDateString = [dateFormatter stringFromDate:selected];
    NSString * message = [[NSString alloc] initWithFormat:@"The Date and Time selected is:%@", destDateString];
    UIAlertView * alert = [[UIAlertView alloc]
                           initWithTitle:@"Date Time Selected"
                           message:message
                           delegate:nil
                           cancelButtonTitle:@"YES"
                           otherButtonTitles:nil];
    [alert show];
}
@end
