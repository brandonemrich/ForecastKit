//
//  FKViewController.m
//  ForecastKit
//
//  Created by Brandon Emrich on 3/28/13.
//  Copyright (c) 2013 Brandon Emrich. All rights reserved.
//

#import "FKViewController.h"

#import "ForecastKit.h"

@interface FKViewController ()

@end

@implementation FKViewController

- (void) viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    ForecastKit *forecast = [[ForecastKit alloc] initWithAPIKey:@"API_KEY_GOES_HERE"];
    
    [forecast getCurrentConditionsForLatitude:31.146187 longitude:-83.452435 success:^(NSMutableDictionary *responseDict) {
        
        NSLog(@"%@", responseDict);
        
    } failure:^(NSError *error){
        
        NSLog(@"Currently %@", error.description);
        
    }];
    
    // Request the forecast for a location starting now
    [forecast getDailyForcastForLatitude:31.146187 longitude:-83.452435 success:^(NSArray *responseArray) {
        
        //NSLog(@"%@", responseArray);
        
    } failure:^(NSError *error){
        
        NSLog(@"Daily %@", error.description);
        
    }];
    
    // Request the forecast for a location starting now
    [forecast getHourlyForcastForLatitude:31.146187 longitude:-83.452435 success:^(NSArray *responseArray) {
        
        //NSLog(@"%@", responseArray);
        
    } failure:^(NSError *error){
        
        NSLog(@"Hourly %@", error.description);
        
    }];
    
    // Request the forecast for a location starting now
    [forecast getMinutelyForcastForLatitude:31.146187 longitude:-83.452435 success:^(NSArray *responseArray) {
        
        //NSLog(@"%@", responseArray);
        
    } failure:^(NSError *error){
        
        NSLog(@"Minutely %@", error.description);
        
    }];
    
    // Request the forecast for a location at a specified time
    [forecast getDailyForcastForLatitude:31.146187 longitude:-83.452435 time:1372708800 success:^(NSArray *responseArray) {
        
        //NSLog(@"%@", responseArray);
        
    } failure:^(NSError *error){
        
        NSLog(@"Daily w/ time %@", error.description);
        
    }];
    
    // Request the forecast for a location at a specified time
    [forecast getHourlyForcastForLatitude:31.146187 longitude:-83.452435 time:1372708800 success:^(NSArray *responseArray) {
        
        //NSLog(@"%@", responseArray);
        
    } failure:^(NSError *error){
        
        NSLog(@"Hourly w/ time %@", error.description);
        
    }]; 
}

@end
