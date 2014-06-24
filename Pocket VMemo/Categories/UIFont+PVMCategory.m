//
//  UIFont+PVMCategory.m
//  Pocket VMemo
//
//  Created by Shengzhe Chen on 6/24/14.
//  Copyright (c) 2014 Shengzhe Chen. All rights reserved.
//

#import "UIFont+PVMCategory.h"

#define SMALL_FONT_SIZE 12.0
#define MEDIUM_FONT_SIZE 16.0
#define LARGE_FONT_SIZE 20.0

@implementation UIFont (PVMCategory)

+ (UIFont *)smallLightFont
{
    return [UIFont fontWithName:@"SourceSansPro-Light" size:SMALL_FONT_SIZE];
}
+ (UIFont *)mediumLightFont
{
    return [UIFont fontWithName:@"SourceSansPro-Light" size:MEDIUM_FONT_SIZE];
}
+ (UIFont *)largeLightFont
{
    return [UIFont fontWithName:@"SourceSansPro-Light" size:LARGE_FONT_SIZE];
}

+ (UIFont *)smallRegularFont
{
    return [UIFont fontWithName:@"SourceSansPro-Regular" size:SMALL_FONT_SIZE];
}
+ (UIFont *)mediumRegularFont
{
    return [UIFont fontWithName:@"SourceSansPro-Regular" size:MEDIUM_FONT_SIZE];
}
+ (UIFont *)largeRegularFont
{
    return [UIFont fontWithName:@"SourceSansPro-Regular" size:LARGE_FONT_SIZE];
}

+ (UIFont *)smallBoldFont
{
    return [UIFont fontWithName:@"SourceSansPro-Bold" size:SMALL_FONT_SIZE];
}
+ (UIFont *)mediumBoldFont
{
    return [UIFont fontWithName:@"SourceSansPro-Bold" size:MEDIUM_FONT_SIZE];
}
+ (UIFont *)largeBoldFont
{
    return [UIFont fontWithName:@"SourceSansPro-Bold" size:LARGE_FONT_SIZE];
}

@end
