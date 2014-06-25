//
//  PVMFlagColorHelper.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "PVMFlagColorHelper.h"

@implementation PVMFlagColorHelper

+ (UIColor *)colorWithFlagColorType:(PVMFlagColorsType)type
{
    switch (type) {
        case kFlagColorBambo:
            return [UIColor bambooColor];
            break;
        case kFlagColorWave:
            return [UIColor waveColor];
            break;
        case kFlagColorPebble:
            return [UIColor pebbleColor];
            break;
        case kFlagColorCoral:
            return [UIColor coralColor];
            break;
        case kFlagColorTempura:
            return [UIColor tempuraColor];
            break;
        case kFlagColorJade:
            return [UIColor jadeColor];
            break;
        case kFlagColorFuji:
            return [UIColor fujiColor];
            break;
        default:
            break;
    }
    return [UIColor clearColor];
}

+ (NSArray *)colorsWithFlagColorTypes:(NSInteger)types
{
    NSMutableArray *colors = [NSMutableArray new];
    if (types & kFlagColorBambo) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorBambo]];
    }
    if (types & kFlagColorWave) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorWave]];
    }
    if (types & kFlagColorPebble) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorPebble]];
    }
    if (types & kFlagColorCoral) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorCoral]];
    }
    if (types & kFlagColorTempura) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorTempura]];
    }
    if (types & kFlagColorJade) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorJade]];
    }
    if (types & kFlagColorFuji) {
        [colors addObject:[[self class] colorWithFlagColorType:kFlagColorFuji]];
    }
    return colors;
}

@end
