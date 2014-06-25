//
//  PVMFlagColorHelper.h
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/25/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef PVMFlagColors
#define PVMFlagColors
typedef enum : NSUInteger {
    kFlagColorBambo = 1 << 0,
    kFlagColorWave = 1 << 1,
    kFlagColorPebble = 1 << 2,
    kFlagColorTempura = 1 << 3,
    kFlagColorCoral = 1 << 4,
    kFlagColorJade = 1 << 5,
    kFlagColorFuji = 1 << 6
} PVMFlagColorsType;
#endif

@interface PVMFlagColorHelper : NSObject
+ (UIColor *)colorWithFlagColorType:(PVMFlagColorsType)type;
+ (NSArray *)colorsWithFlagColorTypes:(NSInteger)types;
@end
