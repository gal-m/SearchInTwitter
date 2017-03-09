//
//  ApiManager.h
//  SearchTwitter
//
//  Created by Gal Mirkin on 06/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef void (^CompletionHandler)(NSDictionary *responseData, NSError *error);

@interface ApiManager : AFHTTPSessionManager

@property (nonatomic) NSString *token;

+ (instancetype)sharedManager;

+ (void)searchTwitterFor:(NSString *)searchKey withCompletion:(CompletionHandler)completion;
+ (void)getOAuthTokenWithConsumerKey:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret withCompletion:(CompletionHandler)completion;
@end
