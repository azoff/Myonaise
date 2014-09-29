//
//  AppDelegate.m
//  Myonaise
//
//  Created by Jonathan Azoff on 9/28/14.
//  Copyright (c) 2014 azoffdesign. All rights reserved.
//

#import "AppDelegate.h"
#import "EventLoop.h"
#import "GestureDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic) EventLoop *loop;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    if (!_loop) {
        id identifier = @"com.azoffdesign.Myonaise";
        id delegate = [[GestureDelegate alloc] init];
        _loop = [[EventLoop alloc] initWithIdentifier:identifier delegate:delegate];
    }
    
    [_loop startWithUpdateTime:1000 waitingTime:10000];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    if (_loop) [_loop stop];
}

@end
