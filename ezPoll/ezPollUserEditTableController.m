//
//  ezPollUserEditTableController.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "ezPollUserEditTableController.h"

@interface ezPollUserEditTableController ()

@property (nonatomic, assign) BOOL infoUpdated;

@end

@implementation ezPollUserEditTableController

#pragma mark - user Information Getter

/*
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.infoUpdated = NO;
    
    if (_user == nil)
        _user = [[ezPollUserLocal alloc] init];
    if (_userAccessApi == nil)
        _userAccessApi = [[userDataAccess alloc] init];
    
    _user = [_userAccessApi loadFromSandBox];
    
    [self preFillUserInfo];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) preFillUserInfo
{
    self.nickNameText.text = _user.nickName;
    self.firstNameText.text = _user.fname;
    self.lastNameText.text = _user.lname;
    self.emailText.text = _user.email;
}

- (IBAction)exitKeyboardonDone:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouch:(id)sender
{
    [[self nickNameText] resignFirstResponder];
    [[self firstNameText] resignFirstResponder];
    [[self lastNameText] resignFirstResponder];
    [[self emailText] resignFirstResponder];
}

- (IBAction)UserEditSaveButton:(id)sender
{
    if (_user.nickName != self.nickNameText.text)
    {
        _user.nickName = self.nickNameText.text;
        self.infoUpdated = YES;
    }
    if(_user.fname != self.firstNameText.text)
    {
        _user.fname = self.firstNameText.text;
        self.infoUpdated = YES;
    }
    if( _user.lname != self.lastNameText.text)
    {
       _user.lname = self.lastNameText.text;
        self.infoUpdated = YES;
    }
    if(_user.email != self.emailText.text)
    {
        _user.email = self.emailText.text;
        self.infoUpdated = YES;
    }
    
    if (self.infoUpdated == YES)
        [_userAccessApi saveToSandBox:_user];
}


-(IBAction)backToDismissEditUserModalView
{
    [self.delegate dismissModalView];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
   
    if (self.infoUpdated == YES)
        [self.delegate userInfoWasUpdated];
}

@end
