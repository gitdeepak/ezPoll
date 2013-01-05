//
//  ezPollData.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <Foundation/Foundation.h>

#define POLL_TITLE      @"pollTitle"
#define POLL_QUESTION   @"pollQuestion"
#define POLL_YES_COUNT  @"yesCount"
#define POLL_NO_COUNT   @"noCount"

#define POLL_RESPONSE_COUNT  2

enum poll_types {
    E_YES_NO_POLL = 1,
    E_FIVE_POINT_RATING_POLL = 2,
} E_POLL_TYPES ;

@interface ezPollData : NSObject


@property (nonatomic, strong) NSMutableArray *pollData;

- (void) loadPollDataFromPlist;
- (void) savePollDataToPlist;
- (void) test;
@end