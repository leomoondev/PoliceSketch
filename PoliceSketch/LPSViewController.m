//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@interface LPSViewController ()
@property (nonatomic, strong) LPSCurrentState *globaLpsCurrentState;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    self.globaLpsCurrentState = [[LPSCurrentState alloc] init];

    [super viewDidLoad];
}


- (IBAction)firstPreviousImage:(id)sender {
    
    [_eyesView setImage:[_globaLpsCurrentState firstPreviousImage]];
}

- (IBAction)firstNextImage:(id)sender {
    
    [_eyesView setImage:[_globaLpsCurrentState firstNextImage]];
}

- (IBAction)secondPreviousImage:(id)sender {
    
    [_noseView setImage:[_globaLpsCurrentState secondPreviousImage]];
}

- (IBAction)secondNextImage:(id)sender {
    
    [_noseView setImage:[_globaLpsCurrentState secondNextImage]];
}

- (IBAction)thirdPreviousImage:(id)sender {
    
    [_mouthView setImage:[_globaLpsCurrentState thirdPreviousImage]];
}

- (IBAction)thirdNextImage:(id)sender {
    
    [_mouthView setImage:[_globaLpsCurrentState thirdNextImage]];
}
@end
