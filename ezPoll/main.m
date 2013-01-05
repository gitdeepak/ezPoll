//
//  main.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ezPollAppDelegate.h"
#import "ezPollUserLocal.h"
#import "userDataAccess.h"
#import "ezPollData.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
/*
        ezPollUserLocal *user = [[ezPollUserLocal alloc] initWithuser:@"deepak" fname:@"vokaliga" lname:@"deepak" andemail:@"deepak@gmail.com"];
        
        NSLog(@"1 %@ %@ %@ %@",user.nickName, user.fname, user.lname, user.email);
        
        userDataAccess *api = [[userDataAccess alloc]init];
        //[api saveToSandBox:user];
        
        ezPollUserLocal *pullUser = [[ezPollUserLocal alloc]init];
        pullUser = [api loadFromSandBox];
        
        NSLog(@"2 %@ %@ %@ %@",pullUser.nickName, pullUser.fname, pullUser.lname, pullUser.email);
        NSLog(@"4 %@ ",[api fullname]);
*/
        ezPollData *data = [[ezPollData alloc] init];
        [data test];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ezPollAppDelegate class]));
    }
}
