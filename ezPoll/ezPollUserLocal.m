//
//  ezPollDataSet.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "ezPollUserLocal.h"

@implementation ezPollUserLocal

- (id) initWithuser:(NSString*) nickName
              fname:(NSString*) fname
              lname:(NSString*)lname
           andemail:(NSString*)email
{
    self = [super init];
    if (self != nil)
    {
        _nickName  = nickName;
        _fname = fname;
        _lname = lname;
        _email = email;
    }
    return self;
}

@end
