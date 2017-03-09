//
//	AuthTokenResult.m
//
//	Create by Gal Mirkin on 8/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "AuthTokenResult.h"

NSString *const kAuthTokenResultType        = @"token_type";
NSString *const kAuthTokenResultAccessToken = @"access_token";

@interface AuthTokenResult ()
@end
@implementation AuthTokenResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
	self = [super init];
    
	if (![dictionary[kAuthTokenResultAccessToken] isKindOfClass:[NSNull class]]) {
		self.accessToken = dictionary[kAuthTokenResultAccessToken];
	}
    
	if (![dictionary[kAuthTokenResultType] isKindOfClass:[NSNull class]]) {
		self.tokenType = dictionary[kAuthTokenResultType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
	if (self.accessToken != nil) {
		dictionary[kAuthTokenResultAccessToken] = self.accessToken;
	}
    
	if (self.tokenType != nil) {
		dictionary[kAuthTokenResultType] = self.tokenType;
	}
	return dictionary;
}


/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
	if (self.accessToken != nil) {
		[aCoder encodeObject:self.accessToken forKey:kAuthTokenResultAccessToken];
	}
    
	if (self.tokenType != nil) {
		[aCoder encodeObject:self.tokenType forKey:kAuthTokenResultType];
	}
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	self = [super init];
	self.tokenType   = [aDecoder decodeObjectForKey:kAuthTokenResultType];
	self.accessToken = [aDecoder decodeObjectForKey:kAuthTokenResultAccessToken];
	return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
	AuthTokenResult *copy = [AuthTokenResult new];
	copy.accessToken = [self.accessToken copy];
	copy.tokenType = [self.tokenType copy];
	return copy;
}




@end
