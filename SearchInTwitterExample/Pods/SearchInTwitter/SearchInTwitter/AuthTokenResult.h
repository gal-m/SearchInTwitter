//
//	AuthTokenResult.h
//
//	Create by Gal Mirkin on 8/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import <UIKit/UIKit.h>


@interface AuthTokenResult : NSObject

@property (nonatomic, strong) NSString * tokenType;
@property (nonatomic, strong) NSString * accessToken;


- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


/*!
 AuthenticateCallback
 
 On a successful authentication returns app's access token.
 Otherwise will return an error.
 */
typedef void (^AuthTokenResultCallback)(AuthTokenResult *result, NSError *error);


@end
