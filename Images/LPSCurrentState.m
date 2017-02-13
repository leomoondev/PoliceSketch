//
//  LPSCurrentState.m
//  PoliceSketch
//
//  Created by Hyung Jip Moon on 2017-02-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentState.h"

@implementation LPSCurrentState

- (instancetype)init
{
    if (self = [super init]) {
        
        

    }
    return self;
}

+ (NSArray*)storeEyeImages {
    LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.eyesView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 56, 220, 100)];
    lpsViewController.eyesView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"eyes_1.jpg"],
                                                  [UIImage imageNamed:@"eyes_2.jpg"],
                                                  [UIImage imageNamed:@"eyes_3.jpg"],
                                                  [UIImage imageNamed:@"eyes_4.jpg"],
                                                  [UIImage imageNamed:@"eyes_5.jpg"],nil];
    
    return lpsViewController.eyesView.animationImages;
}

+ (NSArray*)storeNoseImages {
        LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.noseView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 206, 220, 100)];
    lpsViewController.noseView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"nose_1.jpg"],
                                                  [UIImage imageNamed:@"nose_2.jpg"],
                                                  [UIImage imageNamed:@"nose_3.jpg"],
                                                  [UIImage imageNamed:@"nose_4.jpg"],
                                                  [UIImage imageNamed:@"nose_5.jpg"],nil];
    return lpsViewController.noseView.animationImages;
    
}
+ (NSArray*)storeMouthImages {
    LPSViewController *lpsViewController = [[LPSViewController alloc] init];
    
    lpsViewController.mouthView = [[UIImageView alloc] initWithFrame:CGRectMake(77, 356, 220, 100)];
    lpsViewController.mouthView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"mouth_1.jpg"],
                                                   [UIImage imageNamed:@"mouth_2.jpg"],
                                                   [UIImage imageNamed:@"mouth_3.jpg"],
                                                   [UIImage imageNamed:@"mouth_4.jpg"],
                                                   [UIImage imageNamed:@"mouth_5.jpg"],nil];
    return lpsViewController.mouthView.animationImages;

}

- (UIImage *)firstPreviousImage {

    if ((_eyeObjectIndex >= 0) &&(_eyeObjectIndex < [LPSCurrentState storeEyeImages].count) ){
       
        _eyeObjectIndex--;
        
        if (_eyeObjectIndex < 0) {
            
            _eyeObjectIndex++;
            return [[LPSCurrentState storeEyeImages] objectAtIndex:_eyeObjectIndex];
        }
        
        return [[LPSCurrentState storeEyeImages] objectAtIndex:_eyeObjectIndex];
    
    }

    
    return [LPSCurrentState storeEyeImages][_eyeObjectIndex];
}

- (UIImage *)firstNextImage {

    if ((_eyeObjectIndex >= 0) &&(_eyeObjectIndex < [LPSCurrentState storeEyeImages].count)){
        
        if (_eyeObjectIndex == [LPSCurrentState storeEyeImages].count - 1) {
            
            return [[LPSCurrentState storeEyeImages] objectAtIndex:_eyeObjectIndex];
        }
        
        _eyeObjectIndex++;
        return [[LPSCurrentState storeEyeImages] objectAtIndex:_eyeObjectIndex];

    }
    
    return [LPSCurrentState storeEyeImages][_eyeObjectIndex];

}

- (UIImage *)secondPreviousImage {

    if ((_noseObjectIndex >= 0) &&(_noseObjectIndex < [LPSCurrentState storeNoseImages].count) ){
        
        _noseObjectIndex--;
        
        if (_noseObjectIndex < 0) {
            
            _noseObjectIndex++;
            return [[LPSCurrentState storeNoseImages] objectAtIndex:_noseObjectIndex];
        }
        
        return [[LPSCurrentState storeNoseImages] objectAtIndex:_noseObjectIndex];
        
    }
    
    
    return [LPSCurrentState storeNoseImages][_noseObjectIndex];
}

- (UIImage *)secondNextImage {
    
    if ((_noseObjectIndex >= 0) &&(_noseObjectIndex < [LPSCurrentState storeNoseImages].count)){
        
        if (_noseObjectIndex == [LPSCurrentState storeNoseImages].count - 1) {
            
            return [[LPSCurrentState storeNoseImages] objectAtIndex:_noseObjectIndex];
        }
        
        _noseObjectIndex++;
        return [[LPSCurrentState storeNoseImages] objectAtIndex:_noseObjectIndex];
        
    }
    
    return [LPSCurrentState storeNoseImages][_noseObjectIndex];
}

- (UIImage *)thirdPreviousImage {
    
    if ((_mouthObjectIndex >= 0) &&(_mouthObjectIndex < [LPSCurrentState storeMouthImages].count) ){
        
        _mouthObjectIndex--;
        
        if (_mouthObjectIndex < 0) {
            
            _mouthObjectIndex++;
            return [[LPSCurrentState storeMouthImages] objectAtIndex:_mouthObjectIndex];
        }
        
        return [[LPSCurrentState storeMouthImages] objectAtIndex:_mouthObjectIndex];
        
    }
    
    
    return [LPSCurrentState storeMouthImages][_mouthObjectIndex];

}
- (UIImage *)thirdNextImage {
    
    if ((_mouthObjectIndex >= 0) &&(_mouthObjectIndex < [LPSCurrentState storeMouthImages].count)){
        
        if (_mouthObjectIndex == [LPSCurrentState storeMouthImages].count - 1) {
            
            return [[LPSCurrentState storeMouthImages] objectAtIndex:_mouthObjectIndex];
        }
        
        _mouthObjectIndex++;
        return [[LPSCurrentState storeMouthImages] objectAtIndex:_mouthObjectIndex];
        
    }
    
    return [LPSCurrentState storeMouthImages][_mouthObjectIndex];

}

                                                           
                                                           
@end
