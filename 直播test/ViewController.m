//
//  ViewController.m
//  直播test
//
//  Created by Zeus on 2017/7/21.
//  Copyright © 2017年 Zeus. All rights reserved.
//

#import "ViewController.h"
#import "PLPlayerViewController.h"
#import <RongIMLib/RongIMLib.h>
#import "RCDLive.h"
#import "RCDLiveChatRoomViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
 
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *token = @"Pmc0eXysYC48nu4tZPSZVzc9Ss2sqSY8AFjqW3w1Plwr5vGE7nHw1VwRHrYqMYWkbFym//AfFOlnGkbXugZyudu3hfiXR+3c";
    [[RCDLive sharedRCDLive] connectRongCloudWithToken:token success:^(NSString *loginUserId) {
        dispatch_async(dispatch_get_main_queue(), ^{
            RCUserInfo *user = [[RCUserInfo alloc]init];
            user.userId = @"15335066698";
            user.portraitUri = @"https://sslapi.mygrowth.cn/head_1.jpg";
            user.name = @"caoLei";
            [RCIMClient sharedRCIMClient].currentUserInfo = user;
            
            
            
        });
    } error:^(RCConnectErrorCode status) {
        
        
    } tokenIncorrect:^{
        
    }];

    
    
    
}


#pragma mark --- 开始播放按钮 ---
- (IBAction)startPlayAction:(id)sender {
    
//    PLPlayerViewController *playVC = [[PLPlayerViewController alloc]init];
//    UINavigationController *playNav = [[UINavigationController alloc]initWithRootViewController:playVC];
//    [self presentViewController:playNav animated:NO completion:nil];
    
    RCDLiveChatRoomViewController *chatRoomVC = [[RCDLiveChatRoomViewController alloc]init];
    chatRoomVC.conversationType = ConversationType_CHATROOM;
    chatRoomVC.targetId = @"Room1";
    //chatRoomVC.contentURL = @"http://pili-live-hls.tv.mygrowth.cn/voide/zhubo111.m3u8";
    chatRoomVC.contentURL =@"http://static.tripbe.com/videofiles/20121214/9533522808.f4v.mp4";
    // 屏幕方向
    chatRoomVC.isScreenVertical = YES;
    [self presentViewController:chatRoomVC animated:NO completion:nil];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
