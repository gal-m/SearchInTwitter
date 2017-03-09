//
//	SearchMetadata.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "SearchMetadata.h"

NSString *const kSearchMetadataCount       = @"count";
NSString *const kSearchMetadataQuery       = @"query";
NSString *const kSearchMetadataMaxId       = @"max_id";
NSString *const kSearchMetadataSinceId     = @"since_id";
NSString *const kSearchMetadataMaxIdStr    = @"max_id_str";
NSString *const kSearchMetadataRefreshUrl  = @"refresh_url";
NSString *const kSearchMetadataCompletedIn = @"completed_in";
NSString *const kSearchMetadataNextResults = @"next_results";
NSString *const kSearchMetadataSinceIdStr  = @"since_id_str";

@interface SearchMetadata ()
@end
@implementation SearchMetadata




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kSearchMetadataCompletedIn] isKindOfClass:[NSNull class]]) {
        self.completedIn = [dictionary[kSearchMetadataCompletedIn] floatValue];
    }
    
    if (![dictionary[kSearchMetadataCount] isKindOfClass:[NSNull class]]) {
        self.count = [dictionary[kSearchMetadataCount] integerValue];
    }
    
    if (![dictionary[kSearchMetadataMaxId] isKindOfClass:[NSNull class]]) {
        self.maxId = [dictionary[kSearchMetadataMaxId] integerValue];
    }
    
    if (![dictionary[kSearchMetadataMaxIdStr] isKindOfClass:[NSNull class]]) {
        self.maxIdStr = dictionary[kSearchMetadataMaxIdStr];
    }
    
    if (![dictionary[kSearchMetadataNextResults] isKindOfClass:[NSNull class]]) {
        self.nextResults = dictionary[kSearchMetadataNextResults];
    }
    
    if (![dictionary[kSearchMetadataQuery] isKindOfClass:[NSNull class]]) {
        self.query = dictionary[kSearchMetadataQuery];
    }
    
    if (![dictionary[kSearchMetadataRefreshUrl] isKindOfClass:[NSNull class]]) {
        self.refreshUrl = dictionary[kSearchMetadataRefreshUrl];
    }
    
    if (![dictionary[kSearchMetadataSinceId] isKindOfClass:[NSNull class]]) {
        self.sinceId = [dictionary[kSearchMetadataSinceId] integerValue];
    }
    
    if (![dictionary[kSearchMetadataSinceIdStr] isKindOfClass:[NSNull class]]) {
        self.sinceIdStr = dictionary[kSearchMetadataSinceIdStr];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    dictionary[kSearchMetadataCompletedIn] = @(self.completedIn);
    dictionary[kSearchMetadataCount] = @(self.count);
    dictionary[kSearchMetadataMaxId] = @(self.maxId);
    
    if (self.maxIdStr != nil) {
        dictionary[kSearchMetadataMaxIdStr] = self.maxIdStr;
    }
    
    if (self.nextResults != nil) {
        dictionary[kSearchMetadataNextResults] = self.nextResults;
    }
    
    if (self.query != nil) {
        dictionary[kSearchMetadataQuery] = self.query;
    }
    
    if (self.refreshUrl != nil) {
        dictionary[kSearchMetadataRefreshUrl] = self.refreshUrl;
    }
    dictionary[kSearchMetadataSinceId] = @(self.sinceId);
    
    if (self.sinceIdStr != nil) {
        dictionary[kSearchMetadataSinceIdStr] = self.sinceIdStr;
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
    [aCoder encodeObject:@(self.completedIn) forKey:kSearchMetadataCompletedIn];
    [aCoder encodeObject:@(self.count) forKey:kSearchMetadataCount];
    [aCoder encodeObject:@(self.maxId) forKey:kSearchMetadataMaxId];
    
    if (self.maxIdStr != nil) {
        [aCoder encodeObject:self.maxIdStr forKey:kSearchMetadataMaxIdStr];
    }
    
    if (self.nextResults != nil) {
        [aCoder encodeObject:self.nextResults forKey:kSearchMetadataNextResults];
    }
    
    if (self.query != nil) {
        [aCoder encodeObject:self.query forKey:kSearchMetadataQuery];
    }
    
    if (self.refreshUrl != nil) {
        [aCoder encodeObject:self.refreshUrl forKey:kSearchMetadataRefreshUrl];
    }
    [aCoder encodeObject:@(self.sinceId) forKey:kSearchMetadataSinceId];
    
    if (self.sinceIdStr != nil) {
        [aCoder encodeObject:self.sinceIdStr forKey:kSearchMetadataSinceIdStr];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    self.query       = [aDecoder decodeObjectForKey:kSearchMetadataQuery];
    self.maxIdStr    = [aDecoder decodeObjectForKey:kSearchMetadataMaxIdStr];
    self.refreshUrl  = [aDecoder decodeObjectForKey:kSearchMetadataRefreshUrl];
    self.sinceIdStr  = [aDecoder decodeObjectForKey:kSearchMetadataSinceIdStr];
    self.nextResults = [aDecoder decodeObjectForKey:kSearchMetadataNextResults];
    self.count       = [[aDecoder decodeObjectForKey:kSearchMetadataCount] integerValue];
    self.maxId       = [[aDecoder decodeObjectForKey:kSearchMetadataMaxId] integerValue];
    self.sinceId     = [[aDecoder decodeObjectForKey:kSearchMetadataSinceId] integerValue];
    self.completedIn = [[aDecoder decodeObjectForKey:kSearchMetadataCompletedIn] floatValue];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    SearchMetadata *copy = [SearchMetadata new];
    
    copy.count       = self.count;
    copy.maxId       = self.maxId;
    copy.sinceId     = self.sinceId;
    copy.completedIn = self.completedIn;
    copy.query       = [self.query copy];
    copy.maxIdStr    = [self.maxIdStr copy];
    copy.refreshUrl  = [self.refreshUrl copy];
    copy.sinceIdStr  = [self.sinceIdStr copy];
    copy.nextResults = [self.nextResults copy];
    return copy;
}


@end
