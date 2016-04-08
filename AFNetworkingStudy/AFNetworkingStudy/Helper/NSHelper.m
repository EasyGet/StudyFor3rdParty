//
//  NSHelper.m
//  CaseStation2
//
//  Created by Richie on 16/3/24.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import "NSHelper.h"
#import "Macro.h"
@implementation NSHelper

@end


@implementation NSString (NSDate)



@end

@implementation NSDate (NSString)



@end



NSFileManager *FileManager()
{
    return [NSFileManager defaultManager];
}
NSUserDefaults *UserDefaults()
{
    return [NSUserDefaults standardUserDefaults];
}

NSNotificationCenter *NotificationCenter()
{
    return [NSNotificationCenter defaultCenter];
}

NSString *DocumentsPath()
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}


NSString *DocumentsFolder(NSString *folderName)
{
    return [DocumentsPath() stringByAppendingPathComponent:folderName];
}
NSString *DocumentsFile(NSString *fileName, NSString *fileType)
{
    NSString *file = @"";
    if (fileName) {
        file = DocumentsFolder(fileName);
    }
    if (fileType) {
        file = [file stringByAppendingPathExtension:fileType];
    }
    
    return file;
}