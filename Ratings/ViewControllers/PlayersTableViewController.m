//
//  PlayersTableViewController.m
//  Ratings
//
//  Created by Miguel Aramburo on 10/9/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import "PlayersTableViewController.h"
#import "Player.h"

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    Player *player = self.players[indexPath.row];
    cell.textLabel.text = player.name;
    cell.detailTextLabel.text = player.game;
    
    return cell;
}

@end
