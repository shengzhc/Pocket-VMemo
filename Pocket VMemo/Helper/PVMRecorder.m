//
//  PVMRecorder.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMRecorder.h"

@interface PVMRecorder ()
@property (strong, nonatomic) AVAudioRecorder *recorder;
@end

@implementation PVMRecorder
{
    BOOL _isRecording;
}

+ (PVMRecorder *)defaultRecorder
{
    static PVMRecorder *recorder = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        recorder = [[PVMRecorder alloc] init];
    });
    return recorder;
}

- (instancetype)init
{
    if (self = [super init]) {
    }
    return self;
}

- (BOOL)isRecording
{
    return _isRecording;
}

- (void)start
{
}

- (void)stop
{
    
}

- (void)pause
{
    
}

- (void)resume
{
    
}


@end
