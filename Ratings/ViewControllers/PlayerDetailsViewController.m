//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Miguel Aramburo on 10/11/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"

@interface PlayerDetailsViewController()

@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;

@end

@implementation PlayerDetailsViewController


-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Navigation Items Event

- (IBAction)onDoneTapped:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(playerDetailsViewController:didAddPlayer:)]){
        
        Player *player = [[Player alloc] init];
        player.name = self.nameTextField.text;
        player.game = @"Chess";
        player.rating = 1;
        [self.delegate playerDetailsViewController:self didAddPlayer:player];
    }
}


- (IBAction)onCancelTapped:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(playerDetailsViewControllerDidCancel:)]){
    [self.delegate playerDetailsViewControllerDidCancel:self];
    
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
}


@end
