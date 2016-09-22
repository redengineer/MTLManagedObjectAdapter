
//
//  User.m
//  Demo
//
//  Created by QiuFeng on 9/22/16.
//  Copyright © 2016 www.qiufeng.me. All rights reserved.
//

#import "MTLUser.h"

@implementation MTLUser

+ (NSString *)managedObjectEntityName
{
    return @"User";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey
{
    return @{@"name": @"name",
             @"userId": @"userId"};
}

@end
