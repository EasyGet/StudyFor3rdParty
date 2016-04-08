//
//  NSHelper.h
//  CaseStation2
//
//  Created by Richie on 16/3/24.
//  Copyright © 2016年 YJZX. All rights reserved.
//


/*
 为Foundation库提供方法
 */

#import <Foundation/Foundation.h>

@interface NSHelper : NSObject




@end


@interface NSString (NSDate)

@end

@interface NSDate (NSString)

@end

extern NSFileManager *FileManager();
extern NSUserDefaults *UserDefaults();

extern NSNotificationCenter *NotificationCenter();

extern NSString *DocumentsPath();