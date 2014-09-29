//
//  GestureDelegate.m
//  Myonaise
//
//  Created by Jonathan Azoff on 9/28/14.
//  Copyright (c) 2014 azoffdesign. All rights reserved.
//

#import "GestureDelegate.h"

@implementation GestureDelegate

- (void)myoOnUnpair:(Myo *)myo timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate myoOnUnpair] %@ %llu", myo, timestamp);
}

- (void)myoOnArmLost:(Myo *)myo timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate myoOnArmLost] %@ %llu", myo, timestamp);
}

- (void)myoOnDisconnect:(Myo *)myo timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate myoOnDisconnect] %@ %llu", myo, timestamp);
}

- (void)myo:(Myo *)myo onRssi:(int8_t)rssi timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate onRssi] %d", rssi);
}

- (void)myo:(Myo *)myo onPose:(MyoPose *)pose timestamp:(uint64_t)timestamp
{
    NSString *name;
    switch (pose.poseType) {
        case MyoPoseTypeFingersSpread:
            name = @"fingers spread";
            break;
        case MyoPoseTypeFist:
            name = @"fist";
            break;
        case MyoPoseTypePinkyToThumb:
            name = @"pinky to thumb";
            break;
        case MyoPoseTypeReserved1:
            name = @"reserved #1";
            break;
        case MyoPoseTypeRest:
            name = @"resting";
            break;
        case MyoPoseTypeWaveIn:
            name = @"wave in";
            break;
        case MyoPoseTypeWaveOut:
            name = @"wave out";
            break;
        default:
            name = @"no idea";
            break;
    }
    NSLog(@"[GestureDelegate onPose] %@", name);
}

- (void)myo:(Myo *)myo onGyroscopeDataWithVector:(MyoVector *)vector timestamp:(uint64_t)timestamp
{
//    NSLog(@"[GestureDelegate onGyroscopeDataWithVector] x: %f, y: %f, z: %f, magnitude: %f",
//          vector.x, vector.y, vector.z, vector.magnitude);
}

- (void)myo:(Myo *)myo onAccelerometerDataWithVector:(MyoVector *)vector timestamp:(uint64_t)timestamp
{
//    NSLog(@"[GestureDelegate onAccelerometerDataWithVector] x: %f, y: %f, z: %f, magnitude: %f",
//          vector.x, vector.y, vector.z, vector.magnitude);
}

- (void)myoOnPair:(Myo *)myo firmwareVersion:(NSString *)firmware timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate myoOnPair] %@", firmware);
}

- (void)myoOnConnect:(Myo *)myo firmwareVersion:(NSString *)firmware timestamp:(uint64_t)timestamp
{
    NSLog(@"[GestureDelegate myoOnConnect] %@", firmware);
}

- (void)myoOnArmRecognized:(Myo *)myo arm:(MyoArm)arm direction:(MyoDirection)direction timestamp:(uint64_t)timestamp
{
    NSString *dir;
    switch (direction) {
        case MyoDirectionTowardElbow:
            dir = @"closer to elbow";
            break;
        case MyoDirectionTowardWrist:
            dir = @"closer to wrist";
            break;
        default:
            dir = @"no idea";
            break;
    }
    NSLog(@"[GestureDelegate myoOnArmRecognized] %@", dir);
}

- (void)myo:(Myo *)myo onOrientationDataWithRoll:(int)roll pitch:(int)pitch yaw:(int)yaw timestamp:(uint64_t)timestamp
{
//    NSLog(@"[GestureDelegate onOrientationDataWithRoll] roll: %d, pitch: %d, yaw: %d", roll, pitch, yaw);
}


@end
