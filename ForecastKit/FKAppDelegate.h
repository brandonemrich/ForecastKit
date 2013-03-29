//
//  FKAppDelegate.h
//  ForecastKit
//
//  Created by Brandon Emrich on 3/28/13.
//  Copyright (c) 2013 Brandon Emrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FKViewController;

@interface FKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FKViewController *viewController;

@end
