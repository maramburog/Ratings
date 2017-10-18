//
//  GamePickerViewController.h
//  Ratings
//
//  Created by Miguel Aramburo on 10/16/17.
//  Copyright © 2017 DevF. All rights reserved.
//
/*
#import <UIKit/UIKit.h>

@interface GamePickerViewController : UITableViewController

@end
*/

#import <UIKit/UIKit.h>


@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>
- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic, weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end
