//
//  PlayerTableViewCell.h
//  Ratings
//
//  Created by Miguel Aramburo on 10/11/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerTableViewCell : UITableViewCell


@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
