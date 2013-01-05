//
//  ezPollAboutViewController.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/29/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "ezPollAboutViewController.h"

@interface ezPollAboutViewController ()

@end

@implementation ezPollAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backToDismissEditUserModalView
{
    [self.delegate dismissModalView];
}


@end
