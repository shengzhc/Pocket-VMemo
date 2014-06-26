//
//  PVMRecorder.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMRecorder.h"

@interface PVMRecorder () <AVAudioRecorderDelegate>
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
    [self stop];
    _isRecording = YES;
    NSDictionary *recordSettings = @{AVSampleRateKey : @(44100.0), AVFormatIDKey : @(kAudioFormatMPEG4AAC), AVNumberOfChannelsKey : @(1), AVEncoderAudioQualityKey : @(AVAudioQualityMax)};
    NSURL *filePath = [NSURL URLWithString:[PVMFileManager getUniqueFilePath]];
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryRecord error:nil];
    [[AVAudioSession sharedInstance] setActive:YES error:nil];
    NSError *error;
    self.recorder = [[AVAudioRecorder alloc] initWithURL:filePath settings:recordSettings error:&error];
    self.recorder.delegate = self;
    [self.recorder prepareToRecord];
    [self.recorder record];
}

- (void)stop
{
    if (self.recorder) {
        [self.recorder stop];
        [self.recorder deleteRecording];
        _isRecording = NO;
        self.recorder = nil;
        [[AVAudioSession sharedInstance] setActive:NO error:nil];
    }
}

- (void)pause
{
    if (self.recorder) {
        [self.recorder stop];
        _isRecording = NO;
    }
}

- (void)resume
{
    if (self.recorder) {
        [self.recorder record];
        _isRecording = YES;
    }
}

- (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}

- (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
}



@end
