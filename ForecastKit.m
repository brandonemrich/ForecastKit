//
//  ForecastKit.m
//  ForecastKit
//
//  Created by Brandon Emrich on 3/29/13.
//  Copyright (c) 2013 Brandon Emrich. All rights reserved.
//

#import "ForecastKit.h"

@interface ForecastKit()

@property (nonatomic, strong) NSString *apiKey;

@end

@implementation ForecastKit

-(id)initWithAPIKey:(NSString*)api_key {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.apiKey = [api_key copy];
    
    return self;
}

-(void)getCurrentConditionsForLatitude:(double)lat
                             longitude:(double)lon
                               success:(void (^)(NSMutableDictionary *responseDict))success
                               failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f", self.apiKey, lat, lon]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableDictionary dictionaryWithDictionary:[JSON objectForKey:@"currently"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

-(void)getDailyForcastForLatitude:(double)lat
                         longitude:(double)lon
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f", self.apiKey, lat, lon]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableArray arrayWithArray:[[JSON objectForKey:@"daily"] objectForKey:@"data"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

-(void)getHourlyForcastForLatitude:(double)lat
                         longitude:(double)lon
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f", self.apiKey, lat, lon]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableArray arrayWithArray:[[JSON objectForKey:@"hourly"] objectForKey:@"data"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

-(void)getMinutelyForcastForLatitude:(double)lat
                           longitude:(double)lon
                             success:(void (^)(NSMutableArray *responseArray))success
                             failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f", self.apiKey, lat, lon]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableArray arrayWithArray:[[JSON objectForKey:@"minutely"] objectForKey:@"data"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

-(void)getDailyForcastForLatitude:(double)lat
                         longitude:(double)lon
                              time:(NSTimeInterval)time
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f,%.0f", self.apiKey, lat, lon, time]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableArray arrayWithArray:[[JSON objectForKey:@"daily"] objectForKey:@"data"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

-(void)getHourlyForcastForLatitude:(double)lat
                         longitude:(double)lon
                              time:(NSTimeInterval)time
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.forecast.io/forecast/%@/%.6f,%.6f,%.0f", self.apiKey, lat, lon, time]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        success([NSMutableArray arrayWithArray:[[JSON objectForKey:@"hourly"] objectForKey:@"data"]]);
        
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON){
        
        failure(error);
        
    }];
    [operation start];
}

@end
