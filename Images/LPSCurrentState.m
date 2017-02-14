//
//  LPSCurrentState.m
//  PoliceSketch
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentState.h"

@implementation LPSCurrentState

+ (NSArray*)storeEyeImages {
    LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.eyesView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 56, 220, 100)];
    lpsViewController.eyesView.animationImages = [NSArray arrayWithObjects:
                                                  [UIImage imageNamed:@"eyes_1.jpg"],
                                                  [UIImage imageNamed:@"eyes_2.jpg"],
                                                  [UIImage imageNamed:@"eyes_3.jpg"],
                                                  [UIImage imageNamed:@"eyes_4.jpg"],
                                                  [UIImage imageNamed:@"eyes_5.jpg"],nil];
    
    return lpsViewController.eyesView.animationImages;
}

+ (NSArray*)storeNoseImages {
    LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.noseView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 206, 220, 100)];
    lpsViewController.noseView.animationImages = [NSArray arrayWithObjects:
                                                  [UIImage imageNamed:@"nose_1.jpg"],
                                                  [UIImage imageNamed:@"nose_2.jpg"],
                                                  [UIImage imageNamed:@"nose_3.jpg"],
                                                  [UIImage imageNamed:@"nose_4.jpg"],
                                                  [UIImage imageNamed:@"nose_5.jpg"],nil];
    return lpsViewController.noseView.animationImages;
    
}

+ (NSArray*)storeMouthImages {
    LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.mouthView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 356, 220, 100)];
    lpsViewController.mouthView.animationImages = [NSArray arrayWithObjects:
                                                   [UIImage imageNamed:@"mouth_1.jpg"],
                                                   [UIImage imageNamed:@"mouth_2.jpg"],
                                                   [UIImage imageNamed:@"mouth_3.jpg"],
                                                   [UIImage imageNamed:@"mouth_4.jpg"],
                                                   [UIImage imageNamed:@"mouth_5.jpg"],nil];
    return lpsViewController.mouthView.animationImages;
    
}
                                                           
@end
