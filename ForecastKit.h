//
//  ForecastKit.h
//  ForecastKit
//
//  Created by Brandon Emrich on 3/29/13.
//  Copyright (c) 2013 Zueos, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ForecastKit : NSObject

/**
 * Initializes and returns a new ForecastKit object
 *
 * @param api_key The view that the HUD will be added to
 * @return a new object
 */
-(id)initWithAPIKey:(NSString*)api_key;

// Current Conditions 

/**
 * Request the current conditions for the give location for the next week.
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 */
-(void)getCurrentConditionsForLatitude:(double)lat
                             longitude:(double)lon
                               success:(void (^)(NSMutableDictionary *responseDict))success
                               failure:(void (^)(NSError *error))failure;

/**
 * Request the daily forecast for the specified location for the next week.
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 */
-(void)getDailyForcastForLatitude:(double)lat
                         longitude:(double)lon
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure;

/**
 * Request the hourly forecast for the specified location for the next week.
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 */
-(void)getHourlyForcastForLatitude:(double)lat
                         longitude:(double)lon
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure;


/**
 * Request the minutely forecast for the specified location for the next week.
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 */
-(void)getMinutelyForcastForLatitude:(double)lat
                         longitude:(double)lon
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure;


/**
 * Request the daily forecast for the give location and time
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param time The desired time of the forecast
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 *
 * @discussion for many locations, it can be 60 years in the past to 10 years in the future.
 */
-(void)getDailyForcastForLatitude:(double)lat
                           longitude:(double)lon
                                time:(NSTimeInterval)time
                             success:(void (^)(NSMutableArray *responseArray))success
                             failure:(void (^)(NSError *error))failure;


/**
 * Request the hourly forecast for the give location and time
 *
 * @param lat The latitude of the location.
 * @param long The longitude of the location.
 * @param time The desired time of the forecast
 * @param success A block object to be executed when the operation finishes successfully.
 * @param failure A block object to be executed when the operation finishes unsuccessfully.
 *
 * @discussion for many locations, it can be 60 years in the past to 10 years in the future.
 */
-(void)getHourlyForcastForLatitude:(double)lat
                         longitude:(double)lon
                              time:(NSTimeInterval)time
                           success:(void (^)(NSMutableArray *responseArray))success
                           failure:(void (^)(NSError *error))failure;

@end
