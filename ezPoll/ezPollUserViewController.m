//
//  ezPollUserViewController.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "ezPollUserViewController.h"

@interface ezPollUserViewController ()

@end


@implementation ezPollUserViewController

/* 
 * Function: userAccessApi
 * Description : Overriding the default init for userAccessApi property
 */
- (userDataAccess *) userAccessApi
{
    if (_userAccessApi != nil)
        return _userAccessApi;
    _userAccessApi = [[userDataAccess alloc] init];
    return _userAccessApi;
}

/*
 * Function: user
 * Description : Overriding the default init for user property
 */
- (ezPollUserLocal *) user
{
    if (_user != nil)
        return _user;
    _user = [[userDataAccess alloc] init];
    return _user;
}

/* This is the default entry function for the view - do all inits and prework here */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self user];
    [self userAccessApi];
    
    _user = [_userAccessApi loadFromSandBox];

    [self fillUserView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/*
 * Function Name: fillUserView
 * Description: The main view has the following items to be populated
 */
- (void) fillUserView
{
    self.nickNameLabel.text = [NSString stringWithFormat:@"Hi %@ ...",_user.nickName];
    self.fullNameLabel.text = [_userAccessApi fullname];
}

/*
 * Function Name: reloadData
 * Description: reload the main view data objects 
 */
- (void) reloadData
{
    _user = [_userAccessApi loadFromSandBox];
    [self fillUserView];
}

/*
 * Create a delegate connection between the main view and the modal view
 */
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"UserEditModalInfo"] ||
         [[segue identifier] isEqualToString:@"aboutModalInfo"])
    {
        [segue.destinationViewController setDelegate:self];
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
            [segue.destinationViewController setModalPresentationStyle:UIModalPresentationFormSheet];
    }
}

/*
 * Function : dismissModalView
 * Description: This is the protocol method implemented in the parent view to dismiss the 
 *              modal view
 */
- (void)dismissModalView
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
 * Function Name: userInfoWasUpdated
 * Description: This is the protocol method returned back when the modal view is dismissed 
 *              Here I reload my data once the modal view updates the user information
 */
- (void) userInfoWasUpdated
{
    [self reloadData];
}
@end
