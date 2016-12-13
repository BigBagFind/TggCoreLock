//
//  AMAKeyChain.h
//  TggCoreLock
//
//  Created by 吴玉铁 on 2016/12/13.
//  Copyright © 2016年 吴玉铁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMAKeyChain : NSObject

+ (void)rhKeyChainSave:(NSString *)service;
+ (NSString *)rhKeyChainLoad:(NSString *)service;
+ (void)rhKeyChainDelete:(NSString *)service;


@end
