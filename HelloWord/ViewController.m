//
//  ViewController.m
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4


- (IBAction)playerMove:(id)sender {
    
    self.buttonPressed = sender;
    

    [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(moveThatBitch:) userInfo:nil repeats:YES];
    
}

- (void)moveThatBitch:(id)sender {
    
    //moving the player
    if ([self.buttonPressed isTouchInside]) {
        if ([[[self.buttonPressed titleLabel] text] isEqualToString:@"U"]) {
            if (![self.map moveMap:UP]) {
                [self.player movePlayer:UP];
            }
        }
        else if ([[[self.buttonPressed titleLabel] text] isEqualToString:@"D"]) {
            if (![self.map moveMap:DOWN]) {
                [self.player movePlayer:DOWN];
            }
        }
        else if ([[[self.buttonPressed titleLabel] text] isEqualToString:@"R"]) {
            if (![self.map moveMap:RIGHT]) {
                [self.player movePlayer:RIGHT];
            }
        }
        else if ([[[self.buttonPressed titleLabel] text] isEqualToString:@"L"]) {
            if (![self.map moveMap:LEFT]) {
                [self.player movePlayer:LEFT];
            }
        }
    } else {
        [sender invalidate];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.player = [[Player alloc] initWithPlayerImage:self.playerImage];
    self.map = [[Map alloc] initWithMap:self.mapImage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
