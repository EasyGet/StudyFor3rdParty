//
//  CAHelper.h
//  CaseStation2
//
//  Created by Richie on 16/3/25.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CAHelper : NSObject
+ (CABasicAnimation *)basicAnimation;



+ (CABasicAnimation *)animation:(NSString *)KeyPath fromValue:(id)fromVale byValue:(id)byValue toValue:(id)toValue;
@end
