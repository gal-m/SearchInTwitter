//
//	Statuse.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "Statuse.h"

NSString *const kStatuseIdField              = @"id";
NSString *const kStatuseGeo                  = @"geo";
NSString *const kStatuseLang                 = @"lang";
NSString *const kStatuseText                 = @"text";
NSString *const kStatuseUser                 = @"user";
NSString *const kStatusePlace                = @"place";
NSString *const kStatuseIdStr                = @"id_str";
NSString *const kStatuseSource               = @"source";
NSString *const kStatuseEntities             = @"entities";
NSString *const kStatuseMetadata             = @"metadata";
NSString *const kStatuseFavorited            = @"favorited";
NSString *const kStatuseRetweeted            = @"retweeted";
NSString *const kStatuseTruncated            = @"truncated";
NSString *const kStatuseCreatedAt            = @"created_at";
NSString *const kStatuseCoordinates          = @"coordinates";
NSString *const kStatuseContributors         = @"contributors";
NSString *const kStatuseRetweetCount         = @"retweet_count";
NSString *const kStatuseFavoriteCount        = @"favorite_count";
NSString *const kStatuseIsQuoteStatus        = @"is_quote_status";
NSString *const kStatuseRetweetedStatus      = @"retweeted_status";
NSString *const kStatusePossiblySensitive    = @"possibly_sensitive";
NSString *const kStatuseInReplyToUserId      = @"in_reply_to_user_id";
NSString *const kStatuseInReplyToStatusId    = @"in_reply_to_status_id";
NSString *const kStatuseInReplyToScreenName  = @"in_reply_to_screen_name";
NSString *const kStatuseInReplyToUserIdStr   = @"in_reply_to_user_id_str";
NSString *const kStatuseInReplyToStatusIdStr = @"in_reply_to_status_id_str";

@interface Statuse ()
@end
@implementation Statuse




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kStatuseContributors] isKindOfClass:[NSNull class]]) {
        self.contributors = dictionary[kStatuseContributors];
    }
    
    if (![dictionary[kStatuseCoordinates] isKindOfClass:[NSNull class]]) {
        self.coordinates = dictionary[kStatuseCoordinates];
    }
    
    if (![dictionary[kStatuseCreatedAt] isKindOfClass:[NSNull class]]) {
        self.createdAt = dictionary[kStatuseCreatedAt];
    }
    
    if (![dictionary[kStatuseEntities] isKindOfClass:[NSNull class]]) {
        self.entities = [[Entity alloc] initWithDictionary:dictionary[kStatuseEntities]];
    }
    
    if (![dictionary[kStatuseFavoriteCount] isKindOfClass:[NSNull class]]) {
        self.favoriteCount = [dictionary[kStatuseFavoriteCount] integerValue];
    }
    
    if (![dictionary[kStatuseFavorited] isKindOfClass:[NSNull class]]) {
        self.favorited = [dictionary[kStatuseFavorited] boolValue];
    }
    
    if (![dictionary[kStatuseGeo] isKindOfClass:[NSNull class]]) {
        self.geo = dictionary[kStatuseGeo];
    }
    
    if (![dictionary[kStatuseIdField] isKindOfClass:[NSNull class]]) {
        self.idField = [dictionary[kStatuseIdField] integerValue];
    }
    
    if (![dictionary[kStatuseIdStr] isKindOfClass:[NSNull class]]) {
        self.idStr = dictionary[kStatuseIdStr];
    }
    
    if (![dictionary[kStatuseInReplyToScreenName] isKindOfClass:[NSNull class]]) {
        self.inReplyToScreenName = dictionary[kStatuseInReplyToScreenName];
    }
    
    if (![dictionary[kStatuseInReplyToStatusId] isKindOfClass:[NSNull class]]) {
        self.inReplyToStatusId = dictionary[kStatuseInReplyToStatusId];
    }
    
    if (![dictionary[kStatuseInReplyToStatusIdStr] isKindOfClass:[NSNull class]]) {
        self.inReplyToStatusIdStr = dictionary[kStatuseInReplyToStatusIdStr];
    }
    
    if (![dictionary[kStatuseInReplyToUserId] isKindOfClass:[NSNull class]]) {
        self.inReplyToUserId = dictionary[kStatuseInReplyToUserId];
    }
    
    if (![dictionary[kStatuseInReplyToUserIdStr] isKindOfClass:[NSNull class]]) {
        self.inReplyToUserIdStr = dictionary[kStatuseInReplyToUserIdStr];
    }
    
    if (![dictionary[kStatuseIsQuoteStatus] isKindOfClass:[NSNull class]]) {
        self.isQuoteStatus = [dictionary[kStatuseIsQuoteStatus] boolValue];
    }
    
    if (![dictionary[kStatuseLang] isKindOfClass:[NSNull class]]) {
        self.lang = dictionary[kStatuseLang];
    }
    
    if (![dictionary[kStatuseMetadata] isKindOfClass:[NSNull class]]) {
        self.metadata = [[Metadata alloc] initWithDictionary:dictionary[kStatuseMetadata]];
    }
    
    if (![dictionary[kStatusePlace] isKindOfClass:[NSNull class]]) {
        self.place = dictionary[kStatusePlace];
    }
    
    if (![dictionary[kStatusePossiblySensitive] isKindOfClass:[NSNull class]]) {
        self.possiblySensitive = [dictionary[kStatusePossiblySensitive] boolValue];
    }
    
    if (![dictionary[kStatuseRetweetCount] isKindOfClass:[NSNull class]]) {
        self.retweetCount = [dictionary[kStatuseRetweetCount] integerValue];
    }
    
    if (![dictionary[kStatuseRetweeted] isKindOfClass:[NSNull class]]) {
        self.retweeted = [dictionary[kStatuseRetweeted] boolValue];
    }
    
    if (![dictionary[kStatuseRetweetedStatus] isKindOfClass:[NSNull class]]) {
        self.retweetedStatus = [[RetweetedStatu alloc] initWithDictionary:dictionary[kStatuseRetweetedStatus]];
    }
    
    if (![dictionary[kStatuseSource] isKindOfClass:[NSNull class]]) {
        self.source = dictionary[kStatuseSource];
    }
    
    if (![dictionary[kStatuseText] isKindOfClass:[NSNull class]]) {
        self.text = dictionary[kStatuseText];
    }
    
    if (![dictionary[kStatuseTruncated] isKindOfClass:[NSNull class]]) {
        self.truncated = [dictionary[kStatuseTruncated] boolValue];
    }
    
    if (![dictionary[kStatuseUser] isKindOfClass:[NSNull class]]) {
        self.user = [[User alloc] initWithDictionary:dictionary[kStatuseUser]];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.contributors != nil) {
        dictionary[kStatuseContributors] = self.contributors;
    }
    
    if (self.coordinates != nil) {
        dictionary[kStatuseCoordinates] = self.coordinates;
    }
    
    if (self.createdAt != nil) {
        dictionary[kStatuseCreatedAt] = self.createdAt;
    }
    
    if (self.entities != nil) {
        dictionary[kStatuseEntities] = [self.entities toDictionary];
    }
    
    dictionary[kStatuseFavoriteCount] = @(self.favoriteCount);
    dictionary[kStatuseFavorited] = @(self.favorited);
    
    if (self.geo != nil) {
        dictionary[kStatuseGeo] = self.geo;
    }
    
    dictionary[kStatuseIdField] = @(self.idField);
    
    if (self.idStr != nil) {
        dictionary[kStatuseIdStr] = self.idStr;
    }
    
    if (self.inReplyToScreenName != nil) {
        dictionary[kStatuseInReplyToScreenName] = self.inReplyToScreenName;
    }
    
    if (self.inReplyToStatusId != nil) {
        dictionary[kStatuseInReplyToStatusId] = self.inReplyToStatusId;
    }
    
    if (self.inReplyToStatusIdStr != nil) {
        dictionary[kStatuseInReplyToStatusIdStr] = self.inReplyToStatusIdStr;
    }
    
    if (self.inReplyToUserId != nil) {
        dictionary[kStatuseInReplyToUserId] = self.inReplyToUserId;
    }
    
    if (self.inReplyToUserIdStr != nil) {
        dictionary[kStatuseInReplyToUserIdStr] = self.inReplyToUserIdStr;
    }
    dictionary[kStatuseIsQuoteStatus] = @(self.isQuoteStatus);
    
    if (self.lang != nil) {
        dictionary[kStatuseLang] = self.lang;
    }
    
    if (self.metadata != nil) {
        dictionary[kStatuseMetadata] = [self.metadata toDictionary];
    }
    
    if (self.place != nil) {
        dictionary[kStatusePlace] = self.place;
    }
    dictionary[kStatusePossiblySensitive] = @(self.possiblySensitive);
    dictionary[kStatuseRetweetCount] = @(self.retweetCount);
    dictionary[kStatuseRetweeted] = @(self.retweeted);
    
    if (self.retweetedStatus != nil) {
        dictionary[kStatuseRetweetedStatus] = [self.retweetedStatus toDictionary];
    }
    
    if (self.source != nil) {
        dictionary[kStatuseSource] = self.source;
    }
    
    if (self.text != nil) {
        dictionary[kStatuseText] = self.text;
    }
    dictionary[kStatuseTruncated] = @(self.truncated);
    
    if (self.user != nil) {
        dictionary[kStatuseUser] = [self.user toDictionary];
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
        [aCoder encodeObject:self.contributors forKey:kStatuseContributors];
    }
    
    if (self.coordinates != nil) {
        [aCoder encodeObject:self.coordinates forKey:kStatuseCoordinates];
    }
    
    if (self.createdAt != nil) {
        [aCoder encodeObject:self.createdAt forKey:kStatuseCreatedAt];
    }
    
    if (self.entities != nil) {
        [aCoder encodeObject:self.entities forKey:kStatuseEntities];
    }
    [aCoder encodeObject:@(self.favoriteCount) forKey:kStatuseFavoriteCount];
    [aCoder encodeObject:@(self.favorited) forKey:kStatuseFavorited];
    
    if (self.geo != nil) {
        [aCoder encodeObject:self.geo forKey:kStatuseGeo];
    }
    [aCoder encodeObject:@(self.idField) forKey:kStatuseIdField];
    
    if (self.idStr != nil) {
        [aCoder encodeObject:self.idStr forKey:kStatuseIdStr];
    }
    
    if (self.inReplyToScreenName != nil) {
        [aCoder encodeObject:self.inReplyToScreenName forKey:kStatuseInReplyToScreenName];
    }
    
    if (self.inReplyToStatusId != nil) {
        [aCoder encodeObject:self.inReplyToStatusId forKey:kStatuseInReplyToStatusId];
    }
    
    if (self.inReplyToStatusIdStr != nil) {
        [aCoder encodeObject:self.inReplyToStatusIdStr forKey:kStatuseInReplyToStatusIdStr];
    }
    
    if (self.inReplyToUserId != nil) {
        [aCoder encodeObject:self.inReplyToUserId forKey:kStatuseInReplyToUserId];
    }
    
    if (self.inReplyToUserIdStr != nil) {
        [aCoder encodeObject:self.inReplyToUserIdStr forKey:kStatuseInReplyToUserIdStr];
    }
    [aCoder encodeObject:@(self.isQuoteStatus) forKey:kStatuseIsQuoteStatus];
    
    if (self.lang != nil) {
        [aCoder encodeObject:self.lang forKey:kStatuseLang];
    }
    
    if (self.metadata != nil) {
        [aCoder encodeObject:self.metadata forKey:kStatuseMetadata];
    }
    
    if (self.place != nil) {
        [aCoder encodeObject:self.place forKey:kStatusePlace];
    }
    [aCoder encodeObject:@(self.possiblySensitive) forKey:kStatusePossiblySensitive];
    [aCoder encodeObject:@(self.retweetCount) forKey:kStatuseRetweetCount];
    [aCoder encodeObject:@(self.retweeted) forKey:kStatuseRetweeted];
    
    if (self.retweetedStatus != nil) {
        [aCoder encodeObject:self.retweetedStatus forKey:kStatuseRetweetedStatus];
    }
    
    if (self.source != nil) {
        [aCoder encodeObject:self.source forKey:kStatuseSource];
    }
    
    if (self.text != nil) {
        [aCoder encodeObject:self.text forKey:kStatuseText];
    }
    [aCoder encodeObject:@(self.truncated) forKey:kStatuseTruncated];
    
    if (self.user != nil) {
        [aCoder encodeObject:self.user forKey:kStatuseUser];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    self.geo                  = [aDecoder decodeObjectForKey  :kStatuseGeo];
    self.lang                 = [aDecoder decodeObjectForKey  :kStatuseLang];
    self.text                 = [aDecoder decodeObjectForKey  :kStatuseText];
    self.user                 = [aDecoder decodeObjectForKey  :kStatuseUser];
    self.idStr                = [aDecoder decodeObjectForKey  :kStatuseIdStr];
    self.place                = [aDecoder decodeObjectForKey  :kStatusePlace];
    self.source               = [aDecoder decodeObjectForKey  :kStatuseSource];
    self.entities             = [aDecoder decodeObjectForKey  :kStatuseEntities];
    self.metadata             = [aDecoder decodeObjectForKey  :kStatuseMetadata];
    self.createdAt            = [aDecoder decodeObjectForKey  :kStatuseCreatedAt];
    self.coordinates          = [aDecoder decodeObjectForKey  :kStatuseCoordinates];
    self.contributors         = [aDecoder decodeObjectForKey  :kStatuseContributors];
    self.inReplyToUserId      = [aDecoder decodeObjectForKey  :kStatuseInReplyToUserId];
    self.retweetedStatus      = [aDecoder decodeObjectForKey  :kStatuseRetweetedStatus];
    self.inReplyToStatusId    = [aDecoder decodeObjectForKey  :kStatuseInReplyToStatusId];
    self.inReplyToUserIdStr   = [aDecoder decodeObjectForKey  :kStatuseInReplyToUserIdStr];
    self.inReplyToScreenName  = [aDecoder decodeObjectForKey  :kStatuseInReplyToScreenName];
    self.favorited            = [[aDecoder decodeObjectForKey :kStatuseFavorited] boolValue];
    self.inReplyToStatusIdStr = [aDecoder decodeObjectForKey  :kStatuseInReplyToStatusIdStr];
    self.retweeted            = [[aDecoder decodeObjectForKey :kStatuseRetweeted] boolValue];
    self.truncated            = [[aDecoder decodeObjectForKey :kStatuseTruncated] boolValue];
    self.idField              = [[aDecoder decodeObjectForKey :kStatuseIdField] integerValue];
    self.isQuoteStatus        = [[aDecoder decodeObjectForKey :kStatuseIsQuoteStatus] boolValue];
    self.retweetCount         = [[aDecoder decodeObjectForKey :kStatuseRetweetCount] integerValue];
    self.favoriteCount        = [[aDecoder decodeObjectForKey :kStatuseFavoriteCount] integerValue];
    self.possiblySensitive    = [[aDecoder decodeObjectForKey :kStatusePossiblySensitive] boolValue];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    Statuse *copy = [Statuse new];
    
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
    copy.metadata             = [self.metadata copy];
    copy.createdAt            = [self.createdAt copy];
    copy.possiblySensitive    = self.possiblySensitive;
    copy.coordinates          = [self.coordinates copy];
    copy.contributors         = [self.contributors copy];
    copy.inReplyToUserId      = [self.inReplyToUserId copy];
    copy.retweetedStatus      = [self.retweetedStatus copy];
    copy.inReplyToStatusId    = [self.inReplyToStatusId copy];
    copy.inReplyToUserIdStr   = [self.inReplyToUserIdStr copy];
    copy.inReplyToScreenName  = [self.inReplyToScreenName copy];
    copy.inReplyToStatusIdStr = [self.inReplyToStatusIdStr copy];
    return copy;
}

@end
