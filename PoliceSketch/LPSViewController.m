//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@interface LPSViewController () {
    
    
}

@property (nonatomic, strong) LPSCurrentState *lpsCurrentState;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)firstPreviousImage:(id)sender {
    
    [_eyesView setImage:_lpsCurrentState.firstPreviousImage];
}

- (IBAction)firstNextImage:(id)sender {
    
    [_eyesView setImage:_lpsCurrentState.firstNextImage];
}

- (IBAction)secondPreviousImage:(id)sender {
    
    [_noseView setImage:_lpsCurrentState.secondPreviousImage];
}

- (IBAction)secondNextImage:(id)sender {
    
    [_noseView setImage:_lpsCurrentState.secondNextImage];
}

- (IBAction)thirdPreviousImage:(id)sender {
    
    [_mouthView setImage:_lpsCurrentState.thirdPreviousImage];
}

- (IBAction)thirdNextImage:(id)sender {
    
    [_mouthView setImage:_lpsCurrentState.thirdNextImage];
}

@end
