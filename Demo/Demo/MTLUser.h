//
//  User.h
//  Demo
//
//  Created by QiuFeng on 9/22/16.
//  Copyright © 2016 www.qiufeng.me. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <MTLManagedObjectAdapter.h>

@interface MTLUser : MTLModel<MTLManagedObjectSerializing >

@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *privateKey;

@end
