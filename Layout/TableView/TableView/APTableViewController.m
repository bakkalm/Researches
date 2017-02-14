//
//  APTableViewController.m
//  TableView
//
//  Created by Amin Benarieb on 2/14/17.
//  Copyright © 2017 Amin Benarieb. All rights reserved.
//

#import "APTableViewController.h"
#import "UIScrollView+APParallaxHeader.h"

@interface APTableViewController ()
@property NSArray <NSString *> *dataArray;
@end

@implementation APTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	_dataArray = @[@"Data", @"Data", @"Data", @"Data"];
    [self.tableView addParallaxWithImage:[UIImage imageNamed:@"1"] andHeight:160];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
	cell.textLabel.text = _dataArray[indexPath.row];
	return cell;
}

@end
