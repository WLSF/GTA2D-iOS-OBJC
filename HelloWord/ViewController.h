//
//  ViewController.h
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Map.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *playerImage;

@property (strong, nonatomic) IBOutlet UIView *buttonUp;
@property (strong, nonatomic) IBOutlet UIView *buttonRight;
@property (strong, nonatomic) IBOutlet UIView *buttonDown;
@property (strong, nonatomic) IBOutlet UIView *buttonLeft;

@property (weak, nonatomic) IBOutlet UIImageView *mapImage;


- (IBAction)playerMove:(id)sender;

@property UIButton * buttonPressed;

@property Player * player;
@property Map * map;

@end
