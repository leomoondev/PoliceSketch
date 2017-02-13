//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LPSCurrentState.h"

@interface LPSViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *firstLeftArrowButton;
@property (strong, nonatomic) IBOutlet UIButton *firstRightArrowButton;
@property (strong, nonatomic) IBOutlet UIButton *secondLeftArrowButton;
@property (strong, nonatomic) IBOutlet UIButton *secondRightArrowButton;
@property (strong, nonatomic) IBOutlet UIButton *thirdLeftArrowButton;
@property (strong, nonatomic) IBOutlet UIButton *thirdRightArrowButton;

@property (strong, nonatomic) IBOutlet UIImageView *eyesView;
@property (strong, nonatomic) IBOutlet UIImageView *noseView;
@property (strong, nonatomic) IBOutlet UIImageView *mouthView;

- (IBAction)firstPreviousImage:(id)sender;
- (IBAction)firstNextImage:(id)sender;
- (IBAction)secondPreviousImage:(id)sender;
- (IBAction)secondNextImage:(id)sender;
- (IBAction)thirdPreviousImage:(id)sender;
- (IBAction)thirdNextImage:(id)sender;

@end
