//
//  ezPollDataSet.h
//  ezPoll
//
//  Created by Deepak Vokaliga on 10/28/12.
//  Copyright (c) 2012 com.vokaliga.ezPoll. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ezPollUserLocal : NSObject

@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong) NSString *fname;
@property (nonatomic, strong) NSString *lname;
@property (nonatomic, strong) NSString *email;

- (id) initWithuser:(NSString*) nickName
              fname:(NSString*) fname
              lname:(NSString*)lname
              andemail:(NSString*)email;



@end
