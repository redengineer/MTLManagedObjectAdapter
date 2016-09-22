//
//  ViewController.m
//  Demo
//
//  Created by QiuFeng on 9/22/16.
//  Copyright © 2016 www.qiufeng.me. All rights reserved.
//

#import "ViewController.h"
#import "MTLUser.h"
#import "User.h"
#import <MagicalRecord/MagicalRecord.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MagicalRecord setupCoreDataStack];
    for (int i = 0; i < 10; i++) {
        MTLUser *user = [[MTLUser alloc] init];
        user.userId = [NSString stringWithFormat:@"%d", i];
        user.name = [NSString stringWithFormat:@"name%d", i];
        [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
            
        }];
        [MTLManagedObjectAdapter managedObjectFromModel:user insertingIntoContext:[NSManagedObjectContext MR_defaultContext] error:nil];
        [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
        //[ MR_saveToPersistentStoreAndWait];
    }
  
    //NSPredicate *predicate = [NSPredicate predicateWithFormat:@"@entity = %@", [MTLUser managedObjectEntityName]];
    NSArray *arr = [NSClassFromString([MTLUser managedObjectEntityName]) MR_findAll];
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSError *error;
        MTLUser *user = [MTLManagedObjectAdapter modelOfClass:[MTLUser class] fromManagedObject:obj error:&error];
        NSLog(@"%@ %@", user.name, user.userId);
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
