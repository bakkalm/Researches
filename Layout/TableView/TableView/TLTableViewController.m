//
//  TLTableViewController.m
//  TableView
//
//  Created by Amin Benarieb on 2/13/17.
//  Copyright © 2017 Amin Benarieb. All rights reserved.
//

#import "TLTableViewController.h"
#import "TLTableHeader.h"

@implementation TLTableViewCell
@end

@interface TLTableViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray <NSString *> *titles;
@property NSMutableArray <NSString *> *details;
@property IBOutlet TLTableHeader *headerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewTest;
@end

@implementation TLTableViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.titles = [@[@"Какой-то заголовок на фз скок строк", @"Какой-то заголовок на фз скок строк, Какой-то заголовок на фз скок строк, Какой-то заголовок на фз скок строк, Какой-то заголовок на фз скок строк", @"Какой-то заголовок на фз скок строк, Какой-то заголовок на фз скок строк, Какой-то заголовок на фз скок строк"] mutableCopy];
	self.details = [@[@"Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.", @"Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.", @"Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически.Нужно картинки всегда (на любом экране) иметь по ширине экрана, высота должна высчитываться автоматически."] mutableCopy];
	
	_tableView.rowHeight = UITableViewAutomaticDimension;
	_tableView.estimatedRowHeight = 140;
	
	_tableView.sectionHeaderHeight = UITableViewAutomaticDimension;
	_tableView.estimatedSectionHeaderHeight = 25;
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	[self setHeaderImage:[UIImage imageNamed:@"1" ]];
	
}

- (IBAction)valueChanged:(UISegmentedControl *)sender {
	NSInteger imageIndex = sender.selectedSegmentIndex+1;
	[self setHeaderImage:[UIImage imageNamed:[NSString stringWithFormat:@"%li", imageIndex]]];
}

#pragma mark Image

- (void)setHeaderImage:(UIImage *)image {
	_headerView.imageView.image = image;
	_imageViewTest.image = image;
	
	[_headerView layoutSubviews];
	
//	CGFloat aspectRatioImg = image.size.height / image.size.width;
//	_imageHeightConstraint.constant = CGRectGetWidth(self.view.frame) * aspectRatioImg;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.titles.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 0.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	TLTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	
	[self setUpCell:cell atIndexPath:indexPath];
	return cell;
}

- (void)setUpCell:(TLTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
	
	cell.headerLabel.text = self.titles[indexPath.row];
	cell.contentLabel.text = self.details[indexPath.row];
}

// Table Header Image

//- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//	
//}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//	return _imageView.image.size.height;
//}

#pragma mark Layout Subview

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];

	[_tableView reloadData];
	
//	CGFloat height = CGRectGetHeight(_headerView.imageView.frame);
//	CGRect headerFrame = _headerView.frame;
// 
//	// If we don't have this check, viewDidLayoutSubviews() will get
//	// repeatedly, causing the app to hang.
//	if (height != headerFrame.size.height) {
//		headerFrame.size.height = height;
//		_headerView.frame = headerFrame;
//		_tableView.tableHeaderView = _headerView;
//	}
}

@end
