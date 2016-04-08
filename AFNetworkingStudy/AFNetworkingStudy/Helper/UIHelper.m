//
//  UIHelper.m
//  CaseStation2
//
//  Created by Richie on 16/3/24.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import "UIHelper.h"
//#import "CSBlurView.h"

@implementation UIHelper


+ (CAKeyframeAnimation *)shakeAnimation
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values = @[@(0.6), @(1.05), @(1.1), @(1)];
    animation.keyTimes = @[@(0), @(0.3), @(0.5), @(1.0)];
    animation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
    animation.duration = 1;
    return animation;
}

+ (CAKeyframeAnimation *)shakeAnimation:(State)stateBlock
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values = @[@(0.6), @(1.05), @(1.1), @(1)];
    animation.keyTimes = @[@(0), @(0.3), @(0.5), @(1.0)];
    animation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
    animation.duration = 1;
    return animation;
}

+ (void)showView:(UIView *)view inView:(UIView *)superView animation:(CAKeyframeAnimation *)animation key:(NSString *)key
{
    [superView addSubview:view];
    [view.layer addAnimation:animation forKey:key];
}

+ (CAKeyframeAnimation *)popUpAnimation
{
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    animation.values = @[@(0.6), @(1.1), @(1.3), @(1)];
    animation.keyTimes = @[@(0), @(0.3), @(0.5), @(1.0)];
    animation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
    animation.duration = 1;
    return animation;
}


+ (CAAnimationGroup *)animationGroup
{
    CABasicAnimation *animationZoomIn = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animationZoomIn.duration = 2.0f;
    
    animationZoomIn.autoreverses = NO;
    
    animationZoomIn.repeatCount = 1;
    
    animationZoomIn.toValue = [NSNumber numberWithFloat:1.56];
    
    animationZoomIn.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    CABasicAnimation *animationZoomOut = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animationZoomOut.beginTime = 2.0f;
    
    animationZoomOut.duration = 2.0f;
    
    animationZoomOut.autoreverses = NO;
    
    animationZoomOut.repeatCount = 1;
    
    animationZoomOut.toValue = [NSNumber numberWithFloat:.01];
    
    animationZoomOut.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    CAAnimationGroup *group=[CAAnimationGroup animation];
    
    group.duration=4.0f;
    
    group.animations=[NSArray arrayWithObjects: animationZoomIn, animationZoomOut,nil];
    
    group.removedOnCompletion=NO;
    
    group.fillMode=kCAFillModeForwards;
    
    return group;
}



+ (CAAnimationGroup *)animationShow
{
    CABasicAnimation *animationZoomIn = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animationZoomIn.duration = 2.0f;
    
    animationZoomIn.autoreverses = NO;
    
    animationZoomIn.repeatCount = 1;
    
    animationZoomIn.toValue = [NSNumber numberWithFloat:1.56];
    
    animationZoomIn.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    CABasicAnimation *animationZoomOut = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animationZoomOut.beginTime = 2.0f;
    
    animationZoomOut.duration = 2.0f;
    
    animationZoomOut.autoreverses = NO;
    
    animationZoomOut.repeatCount = 1;
    
    animationZoomOut.toValue = [NSNumber numberWithFloat:.01];
    
    animationZoomOut.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    CAAnimationGroup *group=[CAAnimationGroup animation];
    
    group.duration=4.0f;
    
    group.animations=[NSArray arrayWithObjects: animationZoomIn, animationZoomOut,nil];
    
    group.removedOnCompletion=NO;
    
    group.fillMode=kCAFillModeForwards;
    
    return group;
}
+ (CAAnimationGroup *)animationHide
{
    
    NSString *keyPath = @"transform.scale";
    CABasicAnimation *animationZoomIn = [CABasicAnimation animationWithKeyPath:keyPath];
    
    animationZoomIn.duration = 1.0f;
    
    animationZoomIn.autoreverses = NO;
    
    animationZoomIn.repeatCount = 1;
    
    animationZoomIn.toValue = @(0.01);
    
    animationZoomIn.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    CABasicAnimation *animationZoomOut = [CABasicAnimation animationWithKeyPath:keyPath];
    
    animationZoomOut.beginTime = 1.0f;
    
    animationZoomOut.duration = 1.0f;
    
    animationZoomOut.autoreverses = NO;
    
    animationZoomOut.repeatCount = 1;
    
    animationZoomOut.toValue = @(1.1);
    
    animationZoomOut.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    CABasicAnimation *normalAnimation = [CABasicAnimation animationWithKeyPath:keyPath];
    
    
    
    CAAnimationGroup *group=[CAAnimationGroup animation];
    
    group.duration=4.0f;
    
    group.animations=[NSArray arrayWithObjects: animationZoomIn, animationZoomOut,nil];
    
    group.removedOnCompletion=NO;
    
    group.fillMode=kCAFillModeForwards;
    
    return group;
}
@end


@implementation UIView (Animation)

- (void)addAnimation
{
    
//    [self.layer addAnimation:animation forKey:@"bouce"];
}

- (void)removeAnimation
{
    CGFloat duration = 0.2;
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.transform = CGAffineTransformMakeScale(0.4, 0.4);
    } completion:^(BOOL finished){
        self.transform = CGAffineTransformIdentity;
    }];
}

@end


