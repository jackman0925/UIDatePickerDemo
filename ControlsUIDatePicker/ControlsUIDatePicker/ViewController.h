//
//  ViewController.h
//  ControlsUIDatePicker
//
//  Created by Jackman on 4/2/13.
//  Copyright (c) 2013 Jackman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *btnPressed;
- (IBAction)buttonPressed:(id)sender;

@end
