//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)firstPreviousImage:(id)sender {
    
    [_eyesView setImage:self.firstPreviousImage];
}

- (IBAction)firstNextImage:(id)sender {
    
    [_eyesView setImage:self.firstNextImage];
}

- (IBAction)secondPreviousImage:(id)sender {
    
    [_noseView setImage:self.secondPreviousImage];
}

- (IBAction)secondNextImage:(id)sender {
    
    [_noseView setImage:self.secondNextImage];
}

- (IBAction)thirdPreviousImage:(id)sender {
    
    [_mouthView setImage:self.thirdPreviousImage];
}

- (IBAction)thirdNextImage:(id)sender {
    
    [_mouthView setImage:self.thirdNextImage];
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
