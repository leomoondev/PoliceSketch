//
//  LPSCurrentState.h
//  PoliceSketch
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LPSViewController.h"

@interface LPSCurrentState : NSObject

@property NSInteger eyeObjectIndex;
@property NSInteger noseObjectIndex;
@property NSInteger mouthObjectIndex;

+ (NSArray*)storeEyeImages;
+ (NSArray*)storeNoseImages;
+ (NSArray*)storeMouthImages;

- (UIImage *)firstPreviousImage;
- (UIImage *)firstNextImage;
- (UIImage *)secondPreviousImage;
- (UIImage *)secondNextImage;
- (UIImage *)thirdPreviousImage;
- (UIImage *)thirdNextImage;

@end
