//
//  AppDelegate.h
//  直播test
//
//  Created by Zeus on 2017/7/21.
//  Copyright © 2017年 Zeus. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RONGCLOUD_IM_APPKEY @"k51hidwqkn0lb"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong)NSMutableArray *userList;
@property (nonatomic, assign) BOOL allowRotation;

@end

