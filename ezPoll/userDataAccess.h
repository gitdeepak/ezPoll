//
//  userDataAccess.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/29/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ezPollUserLocal.h"

@interface userDataAccess : ezPollUserLocal

- (NSString *) fullname;

- (ezPollUserLocal*)loadFromSandBox;
- (void)saveToSandBox:(ezPollUserLocal*)user;

@end
