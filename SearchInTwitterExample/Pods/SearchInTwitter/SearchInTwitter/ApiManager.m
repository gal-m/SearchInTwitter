//
//  ApiManager.m
//  SearchTwitter
//
//  Created by Gal Mirkin on 06/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//


#import "ApiManager.h"
#import "Constants.h"

@implementation ApiManager

////////////////////////////////////////////////////////////////////////
#pragma mark - Cache
////////////////////////////////////////////////////////////////////////
+ (instancetype)sharedManager {
    static ApiManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedManager = [[ApiManager alloc] initWithBaseURL:kBaseUrl];
        AFJSONResponseSerializer *responseSerializer = [AFJSONResponseSerializer serializer];
        responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        responseSerializer.removesKeysWithNullValues = YES;
        _sharedManager.responseSerializer = responseSerializer;
        _sharedManager.requestSerializer.timeoutInterval = kDefaultTimeoutInterval;
        [_sharedManager.requestSerializer setValue:_sharedManager.token forHTTPHeaderField:@"Authorization"];
    });
    
    return _sharedManager;
}



////////////////////////////////////////////////////////////////////////
#pragma mark - Methods
////////////////////////////////////////////////////////////////////////
- (void)setToken:(NSString *)token {
    
    if (token) {
        _token = token;
        [self.requestSerializer setValue:token forHTTPHeaderField:@"Authorization"];
        
    } else {
        [self.requestSerializer clearAuthorizationHeader];
    }
}


+ (void)getOAuthTokenWithConsumerKey:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret withCompletion:(CompletionHandler)completion {
    
    //Generate Bearer Token according to Twitter Documentation
    NSString* bearerToken = [NSString stringWithFormat:@"%@:%@", consumerKey , consumerSecret];
    bearerToken = [[bearerToken dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
    
    [[ApiManager sharedManager].requestSerializer clearAuthorizationHeader];
    [[ApiManager sharedManager].requestSerializer setValue:[NSString stringWithFormat:@"Basic %@",bearerToken] forHTTPHeaderField:@"Authorization"];
    
    [[ApiManager sharedManager] POST:kOauthUrlString
                          parameters:@{@"grant_type":@"client_credentials"}
                            progress:nil
                             success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                                 
                                 if (completion) {
                                     completion(responseObject, nil);
                                 }
                             } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                                 
                                 if (completion) {
                                     completion(nil, error);
                                 }
                             }];
}


+ (void)searchTwitterFor:(NSString *)searchKey withCompletion:(CompletionHandler)completion {
    
    NSDictionary *params = @{@"q" : searchKey,
                             @"result_type" : @"recent" };
    
    [[ApiManager sharedManager] GET:kSearchUrlString
                         parameters:params
                           progress:nil
                            success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                                
                                if (completion) {
                                    completion(responseObject, nil);
                                }
                            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                                
                                if (completion) {
                                    completion(nil, error);
                                }
                            }];
}

@end
