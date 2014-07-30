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
    
    //NSLog(@"apertou");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
/*
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alerta!" message:@"Hello World" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];
*/
  /*
    NSString * valoresConcatenados = @"";
    
    for (int i = 0; i < 1000; ++i) {
        if (i % 2 != 0) {
            valoresConcatenados = [valoresConcatenados stringByAppendingFormat:@"Valor: %d\n", i];
        }
    }
    
    NSLog(@"%@", valoresConcatenados);*/
    /*
    
    NSString * string = @"Design. Code. Build. Innovate";
    NSLog(@"%d", string.length);
    
    string = [string stringByReplacingOccurrencesOfString:@"Build." withString:@"Build and Run."];
    NSLog(@"%@", string);
    
    string = [string uppercaseString];
    NSLog(@"%@", string);
    
    string = [NSString stringWithFormat:@"%@%@", @"A seguinte frase: ", string];
    NSLog(@"%@", string);

    NSString *range = [string substringWithRange:NSMakeRange(18, [@"design" length])];
    NSLog(@"%@", range);

    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"%@", string);*/
    /*
    int i = 3;
    float x = 32.354;
    double z = 323.3234;
    
    NSNumber * a = [NSNumber numberWithInt:i];
    NSNumber * b = [NSNumber numberWithInt:x];
    NSNumber * c = [NSNumber numberWithInt:z];
    
    NSNumber * resultado = [NSNumber numberWithDouble:a.intValue + b.floatValue + c.doubleValue];
    
    NSLog(@"%f", resultado.doubleValue);
    
    resultado = [NSNumber numberWithDouble:a.intValue * b.floatValue * c.doubleValue];

    NSLog(@"%f", resultado.doubleValue);*/
/*
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    [array addObject:@"gol"];
    [array addObject:@"palio"];
    [array addObject:@"corolla"];
    [array addObject:@"celta"];
    [array addObject:@"celta"];
    
    NSArray *arr = [[NSArray alloc] initWithObjects:@"maçã", @"banana", @"cajú", @"laranja", nil];

    NSMutableArray *temp = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < arr.count; ++i) {
        [temp addObject:[arr objectAtIndex:i]];
    }
    

    NSArray *arr2 = [[NSArray alloc] initWithArray:temp];*/
    
    
    self.player = [[Player alloc] initWithPlayerImage:self.playerImage];
    self.map = [[Map alloc] initWithMap:self.mapImage];
    
    /*UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake( 0, 0, 1.360f, 1.040f )];
    [imageView setBackgroundColor: [UIColor clearColor]];
    [imageView setImage:img];
    [self.view addSubview: imageView];*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
