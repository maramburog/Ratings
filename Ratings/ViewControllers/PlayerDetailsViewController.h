//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Miguel Aramburo on 10/11/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"


@class PlayerDetailsViewController;


@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *Detail;


@end
