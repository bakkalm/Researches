//
//  TLTableHeader.m
//  TableView
//
//  Created by Amin Benarieb on 2/13/17.
//  Copyright © 2017 Amin Benarieb. All rights reserved.
//

#import "TLTableHeader.h"

@implementation TLTableHeader

- (void)layoutSubviews {
	[super layoutSubviews];
	
	UIImage *image = _imageView.image;
	
	CGFloat aspectRatioImg = image.size.height / image.size.width;
	CGRect frame = _imageView.frame;
	frame.size.width = CGRectGetWidth(self.frame);
	frame.size.height = frame.size.width * aspectRatioImg;;
	_imageView.frame = frame;
	
	CGFloat height = CGRectGetHeight(_imageView.frame);
	CGRect headerFrame = self.frame;
	
	// If we don't have this check, viewDidLayoutSubviews() will get
	// repeatedly, causing the app to hang.
	if (height != headerFrame.size.height) {
		headerFrame.size.height = height;
		self.frame = headerFrame;
//		_tableView.tableHeaderView = _headerView;
	}
}

@end
