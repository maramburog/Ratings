//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Miguel Aramburo on 10/11/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import "PlayerDetailsViewController.h"

@implementation PlayerDetailsViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Navigation Items Event

- (IBAction)onDoneTapped:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(playerDetailsViewControllerDidSave:)]){
    [self.delegate playerDetailsViewControllerDidSave:self];
    }
}

- (IBAction)onCancelTapped:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(playerDetailsViewControllerDidCancel:)]){
    [self.delegate playerDetailsViewControllerDidCancel:self];
    
    }
}


@end
