//
//  PVMViewController.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMViewController.h"

@implementation PVMViewController

- (IBAction)playButtonClicked:(id)sender
{
    if ([[PVMRecorder defaultRecorder] isRecording]) {
        [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
        [[PVMRecorder defaultRecorder] pause];
    } else {
        [self.playButton setTitle:@"Stop" forState:UIControlStateNormal];
        [[PVMRecorder defaultRecorder] start];
    }
}

@end
