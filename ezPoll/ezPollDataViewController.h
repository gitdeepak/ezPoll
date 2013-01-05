//
//  ezPollDataViewController.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ezPollData.h"

@interface ezPollDataViewController : UITableViewController

@property (nonatomic, strong) ezPollData *poll;

- (void) createPoll: (ezPollData*)newPoll;
@end
