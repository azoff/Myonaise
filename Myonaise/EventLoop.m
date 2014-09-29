//
//  EventLoop.m
//  Myonaise
//
//  Created by Jonathan Azoff on 9/28/14.
//  Copyright (c) 2014 azoffdesign. All rights reserved.
//

#import "MyoHelper.h"
#import "EventLoop.h"

@interface EventLoop ()

@property (nonatomic) Myo * hub;

@end

@implementation EventLoop

- (id) initWithIdentifier:(NSString*)identifier delegate:(id<MyoDelegate>)delegate {
    self = [super init];
    if (!self) return nil;
    self.hub = [[Myo alloc] initWithApplicationIdentifier:identifier];
    self.hub.delegate = delegate;
    return self;
}

- (void) startWithUpdateTime:(int)updateTime waitingTime:(int)waitingTime {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, (unsigned long)NULL), ^(void) {
        
        BOOL found;
        while (!found)
            found = [self.hub connectMyoWaiting:waitingTime];
        
        dispatch_async(dispatch_get_main_queue(), ^(void) {
            self.hub.updateTime = updateTime;
            NSLog(@"[EventLoop startWithUpdateTime] Starting updates...");
            [self.hub startUpdate];
        });
        
    });
    
}

- (void) stop {
    NSLog(@"[EventLoop stop] Stopping updates...");
    [self.hub stopUpdate];
}

@end
