//
//  CoreDataAppDelegate.h
//  CoreData
//
//  Created by Christian Retureta on 2013-02-28.
//  Copyright (c) 2013 Christian Retureta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataViewController.h"
@class CoreDataViewController;
@interface CoreDataAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CoreDataViewController *viewController;


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
