//
//  SearchInTwitter.m
//  SearchInTwitter
//
//  Created by Gal Mirkin on 06/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import "ApiManager.h"
#import "SearchInTwitter.h"
#import <Foundation/Foundation.h>

@implementation SearchInTwitter

+ (instancetype)sharedInstance {
    static SearchInTwitter *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}


- (void)setAccessToken:(NSString *)accessToken {
    
    if ([accessToken hasPrefix:@"Bearer"]) {
        [[ApiManager sharedManager] setToken:accessToken];
        
    } else {
        [[ApiManager sharedManager] setToken:[NSString stringWithFormat:@"Bearer %@", accessToken]];
    }
}


- (void)searchTwitterFor:(NSString *)searchKey withCallback:(SearchTwitterResultCallback)callback {
    
    if (![ApiManager sharedManager].token) {
        NSError *error = [NSError errorWithDomain:@"" code:-1 userInfo:@{NSLocalizedDescriptionKey : @" Must set accessToken before making requests"}];
        if (callback) {
            callback(nil,error);
        }
        return;
    }
    
    [ApiManager searchTwitterFor:searchKey withCompletion:^(NSDictionary *responseData, NSError *error) {
        
        if (!error) {
            SearchTwitterResult *responseObject = [[SearchTwitterResult alloc] initWithDictionary:responseData];
            
            if (callback) {
                callback(responseObject,nil);
            }
            
        } else {
            if (callback) {
                callback(nil,error);
            }
        }
    }];
}


- (void)getOAuthTokenWithConsumerKey:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret withCallback:(AuthTokenResultCallback)callback {
    
    [ApiManager getOAuthTokenWithConsumerKey:consumerKey consumerSecret:consumerSecret withCompletion:^(NSDictionary *responseData, NSError *error) {
        
        if (!error) {
            AuthTokenResult *responseObject = [[AuthTokenResult alloc] initWithDictionary:responseData];
            
            if (callback) {
                callback(responseObject,nil);
            }
            
        } else {
            if (callback) {
                callback(nil,error);
            }
        }
    }];
}






@end
