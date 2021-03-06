//
//  PlayersTableViewController.h
//  Ratings
//
//  Created by Miguel Aramburo on 10/9/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersTableViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;

@end
