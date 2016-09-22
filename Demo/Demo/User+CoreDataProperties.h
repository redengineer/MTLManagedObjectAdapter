//
//  User+CoreDataProperties.h
//  Demo
//
//  Created by QiuFeng on 9/22/16.
//  Copyright © 2016 www.qiufeng.me. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface User (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *userId;

@end

NS_ASSUME_NONNULL_END
