//
//  EventLoop.h
//  Myonaise
//
//  Created by Jonathan Azoff on 9/28/14.
//  Copyright (c) 2014 azoffdesign. All rights reserved.
//

#import "MyoHelper.h"
#import <Foundation/Foundation.h>

@interface EventLoop : NSObject

- (id) initWithIdentifier:(NSString*)identifier delegate:(id<MyoDelegate>)delegate;
- (void) startWithUpdateTime:(int)updateTime waitingTime:(int)waitingTime;
- (void) stop;

@end
