//
//  TLTableViewController.h
//  TableView
//
//  Created by Amin Benarieb on 2/13/17.
//  Copyright © 2017 Amin Benarieb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TLTableViewCell : UITableViewCell
@property IBOutlet UILabel* headerLabel;
@property IBOutlet UILabel* contentLabel;
@end


@interface TLTableViewController : UIViewController
@end

