//
//  Map.m
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//

#import "Map.h"

@implementation Map

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

- (id)initWithMap:(UIImageView *)image {
    if (self = [self init]) {
        map = image;
        x = image.frame.origin.x;
        y = image.frame.origin.y;
        width = image.frame.size.width;
        height = image.frame.size.height;
    }
    return self;
}


- (BOOL)moveMap:(int)position {
    if (position == UP) {
        if (y >= 0) {
            return NO;
        }
        y++;
    }
    else if (position == DOWN) {
        if (y + height <= 550) {
            return NO;
        }
        y--;
    }
    else if (position == LEFT) {
        if (x >= 0) {
            return NO;
        }
        x++;
    }
    else if (position == RIGHT) {
        if (x + width <= 330) {
            return NO;
        }
        x--;
    }
    map.frame = CGRectMake(x, y, width, height);
    return YES;
}

@end
