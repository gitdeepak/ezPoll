//
//  ezPollData.m
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import "ezPollData.h"

@implementation ezPollData

- (NSString *)appDocumentsDirectory
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

- (NSString*) pListName
{
    return [[self appDocumentsDirectory] stringByAppendingPathComponent:@"ezPollData.plist"];
}


- (void) loadPollDataFromPlist
{
    NSMutableArray *array = [NSArray arrayWithContentsOfFile:[self pListName]];
    self.pollData = array;
}

- (void) savePollDataToPlist
{
    [self.pollData writeToFile:[self pListName] atomically:YES];
    NSLog(@"Writing poll data to file: %@", [self pListName]);
}

- (void) test
{
    ezPollData *testData = [[ezPollData alloc] init];
    
    testData.pollData = [NSMutableArray array];
    
    // NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"Deepak", @"first", @"Vokaliga", @"last", @"deepak vokaliga", @"fullname", nil];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"poll01", POLL_TITLE, @"do you like ice cream", POLL_QUESTION, @"4", POLL_YES_COUNT, @"5", POLL_NO_COUNT, nil];
    
    //NSLog(@"1>> First:%@ Last:%@", [dict valueForKey:@"first"], [dict valueForKey:@"last"]);
    
    [testData.pollData addObject:dict];
    [testData savePollDataToPlist];

    dict = [NSDictionary dictionaryWithObjectsAndKeys:@"poll02", POLL_TITLE, @"do you like ice cream", POLL_QUESTION, @"4", POLL_YES_COUNT, @"5", POLL_NO_COUNT, nil];

   [testData.pollData addObject:dict];
   [testData savePollDataToPlist];

    ezPollData *readData = [[ezPollData alloc] init];
    readData.pollData = [NSMutableArray array];
    
    [readData loadPollDataFromPlist];
    
    dict = [testData.pollData objectAtIndex:0];

    NSLog(@"2>> First:%@ Last:%@ count= %d", [dict valueForKey:POLL_TITLE], [dict valueForKey:POLL_QUESTION], [testData.pollData count]);
    
    dict = [testData.pollData objectAtIndex:1];

    NSLog(@"3>> First:%@ Last:%@ count= %d", [dict valueForKey:POLL_TITLE], [dict valueForKey:POLL_QUESTION], [testData.pollData count]);

}

@end
