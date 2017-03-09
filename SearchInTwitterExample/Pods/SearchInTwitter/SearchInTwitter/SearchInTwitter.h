//
//  SearchInTwitter.h
//  SearchInTwitter
//
//  Created by Gal Mirkin on 06/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <SearchInTwitter/AuthTokenResult.h>
#import <SearchInTwitter/SearchTwitterResult.h>

@interface SearchInTwitter: NSObject



/* Steps to get Access_Token:
 1. Create an application on your "https://apps.twitter.com" acount
 2. Get Consumer Key and Consumer Secret
 4. Make getOAuthTokenWithConsumerKey call with Consumer Key and Consumer Secret
 5. Get access token and set it to accessToken property
 */
@property (nonatomic, strong) NSString *accessToken;


+ (SearchInTwitter *)sharedInstance;


/*!
 use to search twitter by string to get list of statuses
 
 @param searchKey - the string to search on twitter
 @param callback return SearchTwitterResult or error
 */
- (void)searchTwitterFor:(NSString *)searchKey
            withCallback:(SearchTwitterResultCallback)callback;



/**
 use to get Access_Token from 	Consumer Key (API Key) and 	Consumer Secret (API Secret)
 
 @param consumerKey - the Consumer Key from twitter
 @param consumerSecret - the Consumer Secret from twitter
 @param callback AuthTokenResult or error
 */
- (void)getOAuthTokenWithConsumerKey:(NSString *)consumerKey
                      consumerSecret:(NSString *)consumerSecret
                        withCallback:(AuthTokenResultCallback)callback;



@end


