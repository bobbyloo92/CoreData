//
//  CoreDataViewController.m
//  CoreData
//
//  Created by Christian Retureta on 2013-02-28.
//  Copyright (c) 2013 Christian Retureta. All rights reserved.
//

// Yourdon just put a comment
// Yourodn's another comment
//Christian added a comment!!
<<<<<<< HEAD
//Yourdon's comment on Xcode
=======
//update from Nhiem
>>>>>>> c402a7c7a09094e8702c133af89f7be5321ebe69

// The new comment by Yourdon 9:11

#import "CoreDataViewController.h"

@interface CoreDataViewController ()
//this is a test from Git Hub repository
@end

@implementation CoreDataViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveData:(id)sender {
    
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSManagedObject *newContact;
    newContact = [NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
    
    [newContact setValue:_name.text forKey:@"yourdon"];
    [newContact setValue:_phone.text forKey:@"phone"];
     [newContact setValue:_address.text forKey:@"address"];
    [newContact setValue:_email.text forKey:@"email"];
    
    NSError *error;
    [context save:&error];
    
    _status.text = @"Contact Saved";
    
    
}

- (IBAction)delete:(id)sender {
    
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSEntityDescription *entityDesc =
    [NSEntityDescription entityForName:@"Contacts" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    [request setEntity:entityDesc];
    
    NSPredicate *pred =
    [NSPredicate predicateWithFormat:@"(name = %@)", _name.text];
    
    [request setPredicate:pred];
    
    NSManagedObject *matches = nil;
    NSError *error;
    
    NSArray *objects = [context executeFetchRequest:request
                                              error:&error];
    if ([objects count] == 0) {
        _status.text = @"No matches";
    }
    else {
        matches = objects[0];
        _address.text = [matches valueForKey:@"address"];
        _phone.text = [matches valueForKey:@"phone"];
        
        _email.text = [matches valueForKey:@"email"];
        
        _status.text = [NSString stringWithFormat:@"%d matches found", [objects
                                                                        count]];
    }
    
    for(NSManagedObject *obj in objects)
    {
        
        [context deleteObject:obj];
        
    }
    _status.text= @"Contacts deleted";

    [context save:&error];
    
}

- (IBAction)findContacts:(id)sender {
    
    CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    NSEntityDescription *entityDesc =
    [NSEntityDescription entityForName:@"Contacts" inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    [request setEntity:entityDesc];
    
    NSPredicate *pred =
    [NSPredicate predicateWithFormat:@"(name = %@)", _name.text];
    
    [request setPredicate:pred];
    
    NSManagedObject *matches = nil;
    NSError *error;
    
    NSArray *objects = [context executeFetchRequest:request
                                              error:&error];
    if ([objects count] == 0) {
        _status.text = @"No matches";
    }
    else {
        matches = objects[0];
        _address.text = [matches valueForKey:@"address"];
        _phone.text = [matches valueForKey:@"phone"];
        
        _email.text = [matches valueForKey:@"email"];
        _status.text = [NSString stringWithFormat:@"%d matches found", [objects
                                                                        count]];
    }
    
  
}
- (IBAction)updateContact:(id)sender{
    
            
        CoreDataAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        NSManagedObjectContext *context = [appDelegate managedObjectContext];
        
        NSEntityDescription *entityDesc =
        [NSEntityDescription entityForName:@"Contacts" inManagedObjectContext:context];
        
        NSFetchRequest *request = [[NSFetchRequest alloc] init];
        
        [request setEntity:entityDesc];
        
        NSPredicate *pred =
        [NSPredicate predicateWithFormat:@"(name = %@)", _name.text];
        
        [request setPredicate:pred];
        
        NSManagedObject *matches = nil;
        NSError *error;
        
        NSArray *objects = [context executeFetchRequest:request
                                                  error:&error];
    
    if([objects count]==0)
    {
     _status.text = @"No matches";
        
    }
        else{
            
          
        }
    
    }

- (IBAction)hideKeyboard:(id)sender {
}

- (IBAction)hideKeyboardReal:(id)sender {
}
@end
