//
//  ezPollUserEditTableController.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <UIKit/UIKit.h>

#include "ezPollUserLocal.h"
#include "userDataAccess.h"
#import "DismissModalView.h"

@interface ezPollUserEditTableController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *nickNameText;
@property (weak, nonatomic) IBOutlet UITextField *firstNameText;
@property (weak, nonatomic) IBOutlet UITextField *lastNameText;
@property (weak, nonatomic) IBOutlet UITextField *emailText;

@property (strong, nonatomic) ezPollUserLocal *user;
@property (strong, nonatomic) userDataAccess *userAccessApi;

- (IBAction)UserEditSaveButton:(id)sender;

- (IBAction)backgroundTouch:(id)sender;

- (void) preFillUserInfo;

- (IBAction)exitKeyboardonDone:(id)sender;

@property (nonatomic, weak) id<DismissModalView> delegate;

@end
