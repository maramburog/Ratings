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
{
    NSString *_game;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.Detail.text = _game;
    
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

#pragma mark - GAMEPICKERVIEWCONTROLLERDELAGATE

-(void) gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game
{
    _game = game;
    self.Detail.text = _game;
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
        _game = @"Chess";
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate = self;
        gamePickerViewController.game = _game;
    }
}

- (IBAction)done:(id)sender
{
    Player *player = [[Player alloc] init];
    player.name = self.nameTextField.text;
    player.game = _game;  // only this line is changed
    player.rating = 1;
    
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
}




@end
