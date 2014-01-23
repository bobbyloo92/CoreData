//
//  CoreDataViewController.h
//  CoreData
//
//  Created by Christian Retureta on 2013-02-28.
//  Copyright (c) 2013 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataAppDelegate.h"

@interface CoreDataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *address;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UILabel *status;

- (IBAction)saveData:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *deleteRecord;
- (IBAction)hideKeyboard:(id)sender;
- (IBAction)hideKeyboardReal:(id)sender;

- (IBAction)delete:(id)sender;
-(IBAction) backgroundTouched;

- (IBAction)findContacts:(id)sender;
- (IBAction)updateContact:(id)sender;

@end
