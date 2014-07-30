//
//  Player.m
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//
#import "Player.h"

@implementation Player

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

- (id)initWithPlayerImage:(UILabel *)playerImage {
    if (self = [self init]) {
        image = playerImage;
        x = playerImage.frame.origin.x;
        y = playerImage.frame.origin.y;
        width = playerImage.frame.size.width;
        height = playerImage.frame.size.height;
        
        left = NO;
        up = NO;
        down = NO;
        right = NO;
    }
    return self;
}

- (void)movePlayer:(int)position {
    if (position == LEFT) {
        if (x >= 20) {
            //x = x - 2;
            x--;
        }
    }
    else if (position == RIGHT) {
        if (x + width <= 300) {
            //x = x + 2;
            x++;
        }
    }
    if (position == UP) {
        if (y >= 20) {
            //y = y - 2;
            y--;
        }
    }
    if (position == DOWN) {
        if (y + height <= 450) {
            //y = y + 2;
            y++;
        }
    }
    
    image.frame = CGRectMake(x, y, width, height);
}

@end
