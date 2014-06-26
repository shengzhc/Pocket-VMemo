//
//  PVMFileManager.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMFileManager.h"

#define SOUND_FILE_FOLDER @"Sounds"
#define SOUND_FILE_EXTENSION @"mp3"

@interface PVMFileManager ()
@property (strong, nonatomic) NSString *folderPath;
@end

@implementation PVMFileManager

+ (PVMFileManager *)defaultManager
{
    static PVMFileManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[PVMFileManager alloc] init];
    });
    return manager;
}

+ (NSString *)defaultFolderPath
{
    static NSString *folderPath = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *applicationDocumentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        folderPath = [applicationDocumentsDirectory stringByAppendingPathComponent:SOUND_FILE_FOLDER];
    });
    return folderPath;
}

+ (NSString *)getUniqueFilePath
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *existingFiles = [fileManager contentsOfDirectoryAtPath:[[self class] defaultFolderPath] error:nil];
    NSString *uniqueFilename;
    do {
        CFUUIDRef newUniqueId = CFUUIDCreate(kCFAllocatorDefault);
        CFStringRef newUniqueIdString = CFUUIDCreateString(kCFAllocatorDefault, newUniqueId);
        uniqueFilename = [[[[self class] defaultFolderPath] stringByAppendingPathComponent:(__bridge NSString *)newUniqueIdString] stringByAppendingPathExtension:SOUND_FILE_EXTENSION];
        CFRelease(newUniqueId);
        CFRelease(newUniqueIdString);
    } while ([existingFiles containsObject:uniqueFilename]);
    return [[[self class] defaultFolderPath] stringByAppendingPathComponent:uniqueFilename];
}

- (instancetype)init
{
    if (self = [super init]) {
    }
    return self;
}

@end
