//
//  PlayersTableViewController.m
//  Ratings
//
//  Created by Miguel Aramburo on 10/9/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import "PlayersTableViewController.h"
#import "Player.h"
#import "PlayerTableViewCell.h"

@implementation PlayersTableViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
}

#pragma mark - TABLE VIEW DATA SOURCE

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PlayerTableViewCell *cell = (PlayerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    Player *player = (self.players)[indexPath.row];
    cell.nameLabel.text = player.name;
    cell.gameLabel.text = player.game;
    cell.ratingImageView.image = [self imageForRating:player.rating];
    
    return cell;
}

#pragma mark - TABLE CUSTOMIZATION

- (UIImage *)imageForRating:(int)rating
{
    switch (rating) {
        case 1: return [UIImage imageNamed:@"1StarSmall"];
        case 2: return [UIImage imageNamed:@"2StarsSmall"];
        case 3: return [UIImage imageNamed:@"3StarsSmall"];
        case 4: return [UIImage imageNamed:@"4StarsSmall"];
        case 5: return [UIImage imageNamed:@"5StarsSmall"];
    }
    return nil;
}

# pragma mark - PlayerDetailsViewControllers

-(void) playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller{
    
}
-(void) playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller{
    
}


@end
