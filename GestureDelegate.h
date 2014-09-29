//
//  GestureDelegate.h
//  Myonaise
//
//  Created by Jonathan Azoff on 9/28/14.
//  Copyright (c) 2014 azoffdesign. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyoHelper.h"

@interface GestureDelegate : NSObject <MyoDelegate>

- (void)myoOnUnpair:(Myo *)myo timestamp:(uint64_t)timestamp;
- (void)myoOnArmLost:(Myo *)myo timestamp:(uint64_t)timestamp;
- (void)myoOnDisconnect:(Myo *)myo timestamp:(uint64_t)timestamp;
- (void)myo:(Myo *)myo onRssi:(int8_t)rssi timestamp:(uint64_t)timestamp;
- (void)myo:(Myo *)myo onPose:(MyoPose *)pose timestamp:(uint64_t)timestamp;
- (void)myo:(Myo *)myo onGyroscopeDataWithVector:(MyoVector *)vector timestamp:(uint64_t)timestamp;
- (void)myo:(Myo *)myo onAccelerometerDataWithVector:(MyoVector *)vector timestamp:(uint64_t)timestamp;
- (void)myoOnPair:(Myo *)myo firmwareVersion:(NSString *)firmware timestamp:(uint64_t)timestamp;
- (void)myoOnConnect:(Myo *)myo firmwareVersion:(NSString *)firmware timestamp:(uint64_t)timestamp;
- (void)myoOnArmRecognized:(Myo *)myo arm:(MyoArm)arm direction:(MyoDirection)direction timestamp:(uint64_t)timestamp;
- (void)myo:(Myo *)myo onOrientationDataWithRoll:(int)roll pitch:(int)pitch yaw:(int)yaw timestamp:(uint64_t)timestamp;

@end
