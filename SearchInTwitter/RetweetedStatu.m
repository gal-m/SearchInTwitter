//
//	RetweetedStatu.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "RetweetedStatu.h"

NSString *const kRetweetedStatuIdField              = @"id";
NSString *const kRetweetedStatuGeo                  = @"geo";
NSString *const kRetweetedStatuLang                 = @"lang";
NSString *const kRetweetedStatuText                 = @"text";
NSString *const kRetweetedStatuUser                 = @"user";
NSString *const kRetweetedStatuPlace                = @"place";
NSString *const kRetweetedStatuIdStr                = @"id_str";
NSString *const kRetweetedStatuSource               = @"source";
NSString *const kRetweetedStatuEntities             = @"entities";
NSString *const kRetweetedStatuMetadata             = @"metadata";
NSString *const kRetweetedStatuFavorited            = @"favorited";
NSString *const kRetweetedStatuRetweeted            = @"retweeted";
NSString *const kRetweetedStatuTruncated            = @"truncated";
NSString *const kRetweetedStatuCreatedAt            = @"created_at";
NSString *const kRetweetedStatuCoordinates          = @"coordinates";
NSString *const kRetweetedStatuContributors         = @"contributors";
NSString *const kRetweetedStatuRetweetCount         = @"retweet_count";
NSString *const kRetweetedStatuFavoriteCount        = @"favorite_count";
NSString *const kRetweetedStatuIsQuoteStatus        = @"is_quote_status";
NSString *const kRetweetedStatuInReplyToUserId      = @"in_reply_to_user_id";
NSString *const kRetweetedStatuInReplyToStatusId    = @"in_reply_to_status_id";
NSString *const kRetweetedStatuInReplyToScreenName  = @"in_reply_to_screen_name";
NSString *const kRetweetedStatuInReplyToUserIdStr   = @"in_reply_to_user_id_str";
NSString *const kRetweetedStatuInReplyToStatusIdStr = @"in_reply_to_status_id_str";

@interface RetweetedStatu ()
@end
@implementation RetweetedStatu




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kRetweetedStatuContributors] isKindOfClass:[NSNull class]]) {
        self.contributors = dictionary[kRetweetedStatuContributors];
    }
    
    if (![dictionary[kRetweetedStatuCoordinates] isKindOfClass:[NSNull class]]) {
        self.coordinates = dictionary[kRetweetedStatuCoordinates];
    }
    
    if (![dictionary[kRetweetedStatuCreatedAt] isKindOfClass:[NSNull class]]) {
        self.createdAt = dictionary[kRetweetedStatuCreatedAt];
    }
    if (![dictionary[kRetweetedStatuEntities] isKindOfClass:[NSNull class]]) {
        self.entities = [[Entity alloc] initWithDictionary:dictionary[kRetweetedStatuEntities]];
    }
    
    if (![dictionary[kRetweetedStatuFavoriteCount] isKindOfClass:[NSNull class]]) {
        self.favoriteCount = [dictionary[kRetweetedStatuFavoriteCount] integerValue];
    }
    
    if (![dictionary[kRetweetedStatuFavorited] isKindOfClass:[NSNull class]]) {
        self.favorited = [dictionary[kRetweetedStatuFavorited] boolValue];
    }
    
    if (![dictionary[kRetweetedStatuGeo] isKindOfClass:[NSNull class]]) {
        self.geo = dictionary[kRetweetedStatuGeo];
    }
    if (![dictionary[kRetweetedStatuIdField] isKindOfClass:[NSNull class]]) {
        self.idField = [dictionary[kRetweetedStatuIdField] integerValue];
    }
    
    if (![dictionary[kRetweetedStatuIdStr] isKindOfClass:[NSNull class]]) {
        self.idStr = dictionary[kRetweetedStatuIdStr];
    }
    
    if (![dictionary[kRetweetedStatuInReplyToScreenName] isKindOfClass:[NSNull class]]) {
        self.inReplyToScreenName = dictionary[kRetweetedStatuInReplyToScreenName];
    }
    
    if (![dictionary[kRetweetedStatuInReplyToStatusId] isKindOfClass:[NSNull class]]) {
        self.inReplyToStatusId = [dictionary[kRetweetedStatuInReplyToStatusId] integerValue];
    }
    
    if (![dictionary[kRetweetedStatuInReplyToStatusIdStr] isKindOfClass:[NSNull class]]) {
        self.inReplyToStatusIdStr = dictionary[kRetweetedStatuInReplyToStatusIdStr];
    }
    
    if (![dictionary[kRetweetedStatuInReplyToUserId] isKindOfClass:[NSNull class]]) {
        self.inReplyToUserId = [dictionary[kRetweetedStatuInReplyToUserId] integerValue];
    }
    
    if (![dictionary[kRetweetedStatuInReplyToUserIdStr] isKindOfClass:[NSNull class]]) {
        self.inReplyToUserIdStr = dictionary[kRetweetedStatuInReplyToUserIdStr];
    }
    
    if (![dictionary[kRetweetedStatuIsQuoteStatus] isKindOfClass:[NSNull class]]) {
        self.isQuoteStatus = [dictionary[kRetweetedStatuIsQuoteStatus] boolValue];
    }
    
    if (![dictionary[kRetweetedStatuLang] isKindOfClass:[NSNull class]]) {
        self.lang = dictionary[kRetweetedStatuLang];
    }
    
    if (![dictionary[kRetweetedStatuMetadata] isKindOfClass:[NSNull class]]) {
        self.metadata = [[Metadata alloc] initWithDictionary:dictionary[kRetweetedStatuMetadata]];
    }
    
    if (![dictionary[kRetweetedStatuPlace] isKindOfClass:[NSNull class]]) {
        self.place = dictionary[kRetweetedStatuPlace];
    }
    
    if (![dictionary[kRetweetedStatuRetweetCount] isKindOfClass:[NSNull class]]) {
        self.retweetCount = [dictionary[kRetweetedStatuRetweetCount] integerValue];
    }
    
    if (![dictionary[kRetweetedStatuRetweeted] isKindOfClass:[NSNull class]]) {
        self.retweeted = [dictionary[kRetweetedStatuRetweeted] boolValue];
    }
    
    if (![dictionary[kRetweetedStatuSource] isKindOfClass:[NSNull class]]) {
        self.source = dictionary[kRetweetedStatuSource];
    }
    
    if (![dictionary[kRetweetedStatuText] isKindOfClass:[NSNull class]]) {
        self.text = dictionary[kRetweetedStatuText];
    }
    
    if (![dictionary[kRetweetedStatuTruncated] isKindOfClass:[NSNull class]]) {
        self.truncated = [dictionary[kRetweetedStatuTruncated] boolValue];
    }
    
    if (![dictionary[kRetweetedStatuUser] isKindOfClass:[NSNull class]]) {
        self.user = [[User alloc] initWithDictionary:dictionary[kRetweetedStatuUser]];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.contributors != nil) {
        dictionary[kRetweetedStatuContributors] = self.contributors;
    }
    
    if (self.coordinates != nil) {
        dictionary[kRetweetedStatuCoordinates] = self.coordinates;
    }
    
    if (self.createdAt != nil) {
        dictionary[kRetweetedStatuCreatedAt] = self.createdAt;
    }
    
    if (self.entities != nil) {
        dictionary[kRetweetedStatuEntities] = [self.entities toDictionary];
    }
    
    dictionary[kRetweetedStatuFavoriteCount] = @(self.favoriteCount);
    dictionary[kRetweetedStatuFavorited] = @(self.favorited);
    
    if (self.geo != nil) {
        dictionary[kRetweetedStatuGeo] = self.geo;
    }
    dictionary[kRetweetedStatuIdField] = @(self.idField);
    
    if (self.idStr != nil) {
        dictionary[kRetweetedStatuIdStr] = self.idStr;
    }
    
    if (self.inReplyToScreenName != nil) {
        dictionary[kRetweetedStatuInReplyToScreenName] = self.inReplyToScreenName;
    }
    dictionary[kRetweetedStatuInReplyToStatusId] = @(self.inReplyToStatusId);
    
    if (self.inReplyToStatusIdStr != nil) {
        dictionary[kRetweetedStatuInReplyToStatusIdStr] = self.inReplyToStatusIdStr;
    }
    dictionary[kRetweetedStatuInReplyToUserId] = @(self.inReplyToUserId);
    
    if (self.inReplyToUserIdStr != nil) {
        dictionary[kRetweetedStatuInReplyToUserIdStr] = self.inReplyToUserIdStr;
    }
    dictionary[kRetweetedStatuIsQuoteStatus] = @(self.isQuoteStatus);
    if (self.lang != nil) {
        dictionary[kRetweetedStatuLang] = self.lang;
    }
    
    if (self.metadata != nil) {
        dictionary[kRetweetedStatuMetadata] = [self.metadata toDictionary];
    }
    
    if (self.place != nil) {
        dictionary[kRetweetedStatuPlace] = self.place;
    }
    dictionary[kRetweetedStatuRetweetCount] = @(self.retweetCount);
    dictionary[kRetweetedStatuRetweeted] = @(self.retweeted);
    
    if (self.source != nil) {
        dictionary[kRetweetedStatuSource] = self.source;
    }
    
    if (self.text != nil) {
        dictionary[kRetweetedStatuText] = self.text;
    }
    dictionary[kRetweetedStatuTruncated] = @(self.truncated);
    
    if (self.user != nil) {
        dictionary[kRetweetedStatuUser] = [self.user toDictionary];
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
    
    if (self.contributors != nil) {
        [aCoder encodeObject:self.contributors forKey:kRetweetedStatuContributors];
    }
    
    if (self.coordinates != nil) {
        [aCoder encodeObject:self.coordinates forKey:kRetweetedStatuCoordinates];
    }
    
    if (self.createdAt != nil) {
        [aCoder encodeObject:self.createdAt forKey:kRetweetedStatuCreatedAt];
    }
    
    if (self.entities != nil) {
        [aCoder encodeObject:self.entities forKey:kRetweetedStatuEntities];
    }
    [aCoder encodeObject:@(self.favoriteCount) forKey:kRetweetedStatuFavoriteCount];
    [aCoder encodeObject:@(self.favorited) forKey:kRetweetedStatuFavorited];
    
    if (self.geo != nil) {
        [aCoder encodeObject:self.geo forKey:kRetweetedStatuGeo];
    }
    [aCoder encodeObject:@(self.idField) forKey:kRetweetedStatuIdField];
    
    if (self.idStr != nil) {
        [aCoder encodeObject:self.idStr forKey:kRetweetedStatuIdStr];
    }
    
    if (self.inReplyToScreenName != nil) {
        [aCoder encodeObject:self.inReplyToScreenName forKey:kRetweetedStatuInReplyToScreenName];
    }
    [aCoder encodeObject:@(self.inReplyToStatusId) forKey:kRetweetedStatuInReplyToStatusId];
    
    if (self.inReplyToStatusIdStr != nil) {
        [aCoder encodeObject:self.inReplyToStatusIdStr forKey:kRetweetedStatuInReplyToStatusIdStr];
    }
    [aCoder encodeObject:@(self.inReplyToUserId) forKey:kRetweetedStatuInReplyToUserId];
    
    if (self.inReplyToUserIdStr != nil) {
        [aCoder encodeObject:self.inReplyToUserIdStr forKey:kRetweetedStatuInReplyToUserIdStr];
    }
    [aCoder encodeObject:@(self.isQuoteStatus) forKey:kRetweetedStatuIsQuoteStatus];
    
    if (self.lang != nil) {
        [aCoder encodeObject:self.lang forKey:kRetweetedStatuLang];
    }
    
    if (self.metadata != nil) {
        [aCoder encodeObject:self.metadata forKey:kRetweetedStatuMetadata];
    }
    
    if (self.place != nil) {
        [aCoder encodeObject:self.place forKey:kRetweetedStatuPlace];
    }
    [aCoder encodeObject:@(self.retweetCount) forKey:kRetweetedStatuRetweetCount];
    [aCoder encodeObject:@(self.retweeted) forKey:kRetweetedStatuRetweeted];
    
    if (self.source != nil) {
        [aCoder encodeObject:self.source forKey:kRetweetedStatuSource];
    }
    
    if (self.text != nil) {
        [aCoder encodeObject:self.text forKey:kRetweetedStatuText];
    }
    [aCoder encodeObject:@(self.truncated) forKey:kRetweetedStatuTruncated];
    
    if (self.user != nil) {
        [aCoder encodeObject:self.user forKey:kRetweetedStatuUser];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.geo                  = [aDecoder decodeObjectForKey  :kRetweetedStatuGeo];
    self.lang                 = [aDecoder decodeObjectForKey  :kRetweetedStatuLang];
    self.text                 = [aDecoder decodeObjectForKey  :kRetweetedStatuText];
    self.user                 = [aDecoder decodeObjectForKey  :kRetweetedStatuUser];
    self.idStr                = [aDecoder decodeObjectForKey  :kRetweetedStatuIdStr];
    self.place                = [aDecoder decodeObjectForKey  :kRetweetedStatuPlace];
    self.source               = [aDecoder decodeObjectForKey  :kRetweetedStatuSource];
    self.entities             = [aDecoder decodeObjectForKey  :kRetweetedStatuEntities];
    self.metadata             = [aDecoder decodeObjectForKey  :kRetweetedStatuMetadata];
    self.createdAt            = [aDecoder decodeObjectForKey  :kRetweetedStatuCreatedAt];
    self.coordinates          = [aDecoder decodeObjectForKey  :kRetweetedStatuCoordinates];
    self.contributors         = [aDecoder decodeObjectForKey  :kRetweetedStatuContributors];
    self.inReplyToUserIdStr   = [aDecoder decodeObjectForKey  :kRetweetedStatuInReplyToUserIdStr];
    self.inReplyToScreenName  = [aDecoder decodeObjectForKey  :kRetweetedStatuInReplyToScreenName];
    self.favorited            = [[aDecoder decodeObjectForKey :kRetweetedStatuFavorited] boolValue];
    self.inReplyToStatusIdStr = [aDecoder decodeObjectForKey  :kRetweetedStatuInReplyToStatusIdStr];
    self.retweeted            = [[aDecoder decodeObjectForKey :kRetweetedStatuRetweeted] boolValue];
    self.truncated            = [[aDecoder decodeObjectForKey :kRetweetedStatuTruncated] boolValue];
    self.idField              = [[aDecoder decodeObjectForKey :kRetweetedStatuIdField] integerValue];
    self.isQuoteStatus        = [[aDecoder decodeObjectForKey :kRetweetedStatuIsQuoteStatus] boolValue];
    self.retweetCount         = [[aDecoder decodeObjectForKey :kRetweetedStatuRetweetCount] integerValue];
    self.favoriteCount        = [[aDecoder decodeObjectForKey :kRetweetedStatuFavoriteCount] integerValue];
    self.inReplyToUserId      = [[aDecoder decodeObjectForKey :kRetweetedStatuInReplyToUserId] integerValue];
    self.inReplyToStatusId    = [[aDecoder decodeObjectForKey :kRetweetedStatuInReplyToStatusId] integerValue];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    RetweetedStatu *copy = [RetweetedStatu new];
    
    copy.idField              = self.idField;
    copy.favorited            = self.favorited;
    copy.retweeted            = self.retweeted;
    copy.truncated            = self.truncated;
    copy.geo                  = [self.geo copy];
    copy.lang                 = [self.lang copy];
    copy.text                 = [self.text copy];
    copy.user                 = [self.user copy];
    copy.idStr                = [self.idStr copy];
    copy.place                = [self.place copy];
    copy.retweetCount         = self.retweetCount;
    copy.favoriteCount        = self.favoriteCount;
    copy.isQuoteStatus        = self.isQuoteStatus;
    copy.source               = [self.source copy];
    copy.entities             = [self.entities copy];
    copy.inReplyToUserId      = self.inReplyToUserId;
    copy.metadata             = [self.metadata copy];
    copy.createdAt            = [self.createdAt copy];
    copy.inReplyToStatusId    = self.inReplyToStatusId;
    copy.coordinates          = [self.coordinates copy];
    copy.contributors         = [self.contributors copy];
    copy.inReplyToUserIdStr   = [self.inReplyToUserIdStr copy];
    copy.inReplyToScreenName  = [self.inReplyToScreenName copy];
    copy.inReplyToStatusIdStr = [self.inReplyToStatusIdStr copy];
    return copy;
}


@end
