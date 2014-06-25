//
//  PVMRecorder.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMRecorder.h"

#define <#macro#>

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

+ (NSString *)getUniqueFilenameInFolder:(NSString *)folder forFileExtension:(NSString *)fileExtension
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *existingFiles = [fileManager contentsOfDirectoryAtPath:folder error:nil];
    NSString *uniqueFilename;
    
    do {
        CFUUIDRef newUniqueId = CFUUIDCreate(kCFAllocatorDefault);
        CFStringRef newUniqueIdString = CFUUIDCreateString(kCFAllocatorDefault, newUniqueId);
        uniqueFilename = [[folder stringByAppendingPathComponent:(NSString *)newUniqueIdString] stringByAppendingPathExtension:fileExtension];
        CFRelease(newUniqueId);
        CFRelease(newUniqueIdString);
    } while ([existingFiles containsObject:uniqueFilename]);
    return uniqueFilename;
}

@end
