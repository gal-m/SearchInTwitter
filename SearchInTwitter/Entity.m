//
//	Entity.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "Entity.h"


NSString *const kEntityUrls             = @"urls";
NSString *const kEntitySymbols          = @"symbols";
NSString *const kEntityHashtags         = @"hashtags";
NSString *const kEntityDescriptionField = @"description";
NSString *const kEntityUserMentions     = @"user_mentions";

@interface Entity ()
@end
@implementation Entity




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kEntityHashtags] isKindOfClass:[NSNull class]]) {
        self.hashtags = dictionary[kEntityHashtags];
    }
    
    if (![dictionary[kEntitySymbols] isKindOfClass:[NSNull class]]) {
        self.symbols = dictionary[kEntitySymbols];
    }
    
    if (![dictionary[kEntityUrls] isKindOfClass:[NSNull class]]) {
        self.urls = dictionary[kEntityUrls];
    }
    
    if (dictionary[kEntityUserMentions] != nil && [dictionary[kEntityUserMentions] isKindOfClass:[NSArray class]]) {
        NSArray * userMentionsDictionaries = dictionary[kEntityUserMentions];
        NSMutableArray * userMentionsItems = [NSMutableArray array];
        
        for (NSDictionary * userMentionsDictionary in userMentionsDictionaries) {
            UserMention * userMentionsItem = [[UserMention alloc] initWithDictionary:userMentionsDictionary];
            [userMentionsItems addObject:userMentionsItem];
        }
        self.userMentions = userMentionsItems;
    }
    
    if (![dictionary[kEntityDescriptionField] isKindOfClass:[NSNull class]]) {
        self.descriptionField = [[Description alloc] initWithDictionary:dictionary[kEntityDescriptionField]];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.hashtags != nil) {
        dictionary[kEntityHashtags] = self.hashtags;
    }
    
    if (self.symbols != nil) {
        dictionary[kEntitySymbols] = self.symbols;
    }
    
    if (self.urls != nil) {
        dictionary[kEntityUrls] = self.urls;
    }
    
    if (self.userMentions != nil) {
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        
        for (UserMention * userMentionsElement in self.userMentions) {
            [dictionaryElements addObject:[userMentionsElement toDictionary]];
        }
        dictionary[kEntityUserMentions] = dictionaryElements;
    }
    
    if (self.descriptionField != nil) {
        dictionary[kEntityDescriptionField] = [self.descriptionField toDictionary];
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
    
    if (self.hashtags != nil) {
        [aCoder encodeObject:self.hashtags forKey:kEntityHashtags];
    }
    
    if (self.symbols != nil) {
        [aCoder encodeObject:self.symbols forKey:kEntitySymbols];
    }
    
    if (self.urls != nil) {
        [aCoder encodeObject:self.urls forKey:kEntityUrls];
    }
    
    if (self.userMentions != nil) {
        [aCoder encodeObject:self.userMentions forKey:kEntityUserMentions];
    }
    
    if (self.descriptionField != nil) {
        [aCoder encodeObject:self.descriptionField forKey:kEntityDescriptionField];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.hashtags = [aDecoder decodeObjectForKey:kEntityHashtags];
    self.symbols = [aDecoder decodeObjectForKey:kEntitySymbols];
    self.urls = [aDecoder decodeObjectForKey:kEntityUrls];
    self.userMentions = [aDecoder decodeObjectForKey:kEntityUserMentions];
    self.descriptionField = [aDecoder decodeObjectForKey:kEntityDescriptionField];
    return self;
    
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    Entity *copy = [Entity new];
    copy.hashtags = [self.hashtags copy];
    copy.symbols = [self.symbols copy];
    copy.urls = [self.urls copy];
    copy.userMentions = [self.userMentions copy];
    copy.descriptionField = [self.descriptionField copy];
    return copy;
}


@end
