//
//  CAHelper.m
//  CaseStation2
//
//  Created by Richie on 16/3/25.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import "CAHelper.h"

@implementation CAHelper
+ (CABasicAnimation *)basicAnimation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animation.fromValue = @0.8;
    animation.toValue = @1;
    animation.byValue = @1.5;
    return animation;
    
}

+ (CABasicAnimation *)animation:(NSString *)KeyPath fromValue:(id)fromVale byValue:(id)byValue toValue:(id)toValue
{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:KeyPath];
    
    if (fromVale) {
        animation.fromValue = fromVale;
    }
    if (byValue) {
        animation.byValue = byValue;
    }
    
    if (toValue) {
        animation.toValue = toValue;
    }
    
    return animation;
}
@end
