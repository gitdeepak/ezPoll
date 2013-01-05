//
//  userDataAccess.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/29/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "userDataAccess.h"

@implementation userDataAccess

#pragma mark - Generic Functions to access User Information

- (NSString*) fullname
{
    return [NSString stringWithFormat:@"%@ %@", self.fname, self.lname];
}

#pragma mark - load and save ezPollUser.plist

- (NSString *)appDocumentsDirectory
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

- (NSString*) pListName
{
    return [[self appDocumentsDirectory] stringByAppendingPathComponent:@"ezPollUser.plist"];
}

- (ezPollUserLocal*)loadFromSandBox
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[self pListName]];
    if (array != nil && [array count] > 0)
    {
        [self setNickName:[array objectAtIndex:0]];
        [self setFname:[array objectAtIndex:1]];
        [self setLname:[array objectAtIndex:2]];
        [self setEmail:[array objectAtIndex:3]];
    }
    return self;
}

- (void)saveToSandBox:(ezPollUserLocal*)user;
{
    NSArray *array = [NSArray arrayWithObjects:
                       [user nickName],
                       [user fname],
                       [user lname],
                       [user email],
                       nil];
    [array writeToFile:[self pListName] atomically:YES];
    NSLog(@"Writing user to file: %@", [self pListName]);
}

@end
