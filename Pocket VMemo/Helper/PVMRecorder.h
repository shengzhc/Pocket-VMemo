//
//  PVMRecorder.h
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVMRecorder : NSObject
+ (PVMRecorder *)defaultRecorder;
- (BOOL)isRecording;
- (void)start;
- (void)stop;
- (void)pause;
- (void)resume;
@end
