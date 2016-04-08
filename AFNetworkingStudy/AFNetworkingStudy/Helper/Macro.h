//
//  Macro.h
//  VH
//
//  Created by Richie on 16/4/5.
//  Copyright © 2016年 zww. All rights reserved.
//

#ifndef Macro_h
#define Macro_h


#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif


#define StatusBar_HEIGHT 20

#define NavigationBar_HEIGHT 44

#define NavigationBarIcon 20

#define TabBar_HEIGHT 49

#define TabBarIcon 30

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#pragma mark - 单例
#define DEFINE_SINGLETON_FOR_HEADER(className) + (className *)shared##className;
#define DEFINE_SINGLETON_FOR_CLASS(className) \
\
+ (className *)shared##className { \
    static className *shared##className = nil; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        shared##className = [[self alloc] init]; \
    }); \
    return shared##className; \
}

#endif /* Macro_h */
