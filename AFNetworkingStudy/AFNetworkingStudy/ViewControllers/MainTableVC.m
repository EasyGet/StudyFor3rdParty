//
//  MainTableVCViewController.m
//  AFNetworkingStudy
//
//  Created by Richie on 16/4/8.
//  Copyright © 2016年 YJZX. All rights reserved.
//

#import "MainTableVC.h"
#import <MJRefresh.h>
#import <MBProgressHUD.h>

/*
 MJRe
 */
@interface MainTableVC ()
@property (strong, nonatomic) IBOutletCollection(UITableView) NSArray *testOne;

@end

@implementation MainTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];

    
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(requestNewestData:)];
    
    
    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData:)];
    
    if (!_dataSource) {
        _dataSource = [NSMutableArray arrayWithObject:[NSMutableArray arrayWithObjects:@1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13, @14, @15, @16, @17, @18, @19, @20, @21, @22, @23, @24, @25, @26, nil]];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[_dataSource objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    return cell;
}

#pragma mark - Private method
- (void)requestNewestData:(id)sender
{
    
    
    [self performSelectorOnMainThread:@selector(endRefresh) withObject:nil waitUntilDone:YES];
}

- (void)loadMoreData:(id)sender
{
    [self performSelectorOnMainThread:@selector(endRefresh) withObject:nil waitUntilDone:YES];
}


- (void)endRefresh
{
    [self.tableView.mj_header endRefreshing];
    [self.tableView.mj_footer endRefreshing];
}

#pragma mark - Public method

@end
