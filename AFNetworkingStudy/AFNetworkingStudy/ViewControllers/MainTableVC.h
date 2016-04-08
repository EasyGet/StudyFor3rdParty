//
//  MainTableVCViewController.h
//  AFNetworkingStudy
//
//  Created by Richie on 16/4/8.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import "BaseTableVC.h"

@interface MainTableVC : BaseTableVC


/*
 dataSource 里面的对象是NSMutableArray
 */
@property (nonatomic, strong) NSMutableArray *dataSource;

@end
