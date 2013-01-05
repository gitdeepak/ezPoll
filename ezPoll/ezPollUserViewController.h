//
//  ezPollUserViewController.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ezPollUserLocal.h"
#import "userDataAccess.h"
#import "DismissModalView.h"

@interface ezPollUserViewController : UIViewController <DismissModalView>

@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;

@property (strong, nonatomic) ezPollUserLocal *user;
@property (strong, nonatomic) userDataAccess *userAccessApi;

- (void) fillUserView;
- (void) reloadData;

@end
