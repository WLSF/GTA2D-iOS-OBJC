//
//  Map.h
//  JoguinhoFeliz
//
//  Created by Willian Luigi on 28/07/14.
//  Copyright (c) 2014 Willian Luigi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Map : NSObject {
    UIImageView * map;
    float x, y;
    float width, height;
}

- (id)initWithMap:(UIImageView *)image;

- (BOOL)moveMap:(int)position;

@end
