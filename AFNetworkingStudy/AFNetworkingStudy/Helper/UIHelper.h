//
//  UIHelper.h
//  CaseStation2
//
//  Created by Richie on 16/3/24.
//  Copyright © 2016年 YJZX. All rights reserved.
//


/*
 为UIKit 提供
 */


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>




typedef void(^State)(BOOL state);
@interface UIHelper : NSObject

+ (CAKeyframeAnimation *)shakeAnimation;

+ (CAKeyframeAnimation *)shakeAnimation:(State)stateBlock;



+ (CAKeyframeAnimation *)popUpAnimation;
+ (CAAnimationGroup *)animationGroup;


+ (CAAnimationGroup *)animationShow;
+ (CAAnimationGroup *)animationHide;
@end


@interface UIView (Animation)
- (void)addAnimation;
- (void)removeAnimation;
@end