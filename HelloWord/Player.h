//
//  Player.h
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject {
    UILabel * image;
    float x, y;
    float width, height;
    
    BOOL left, up, right, down;
}


- (id)initWithPlayerImage:(UILabel *)image;

- (void)movePlayer:(int)position;

@end
