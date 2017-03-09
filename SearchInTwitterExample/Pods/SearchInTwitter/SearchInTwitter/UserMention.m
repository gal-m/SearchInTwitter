//
//	UserMention.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "UserMention.h"

NSString *const kUserMentionIdField    = @"id";
NSString *const kUserMentionName       = @"name";
NSString *const kUserMentionIdStr      = @"id_str";
NSString *const kUserMentionIndices    = @"indices";
NSString *const kUserMentionScreenName = @"screen_name";

@interface UserMention ()
@end
@implementation UserMention


/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kUserMentionIdField] isKindOfClass:[NSNull class]]) {
        self.idField = [dictionary[kUserMentionIdField] integerValue];
    }
    
    if (![dictionary[kUserMentionIdStr] isKindOfClass:[NSNull class]]) {
        self.idStr = dictionary[kUserMentionIdStr];
    }
    
    if (![dictionary[kUserMentionIndices] isKindOfClass:[NSNull class]]) {
        self.indices = dictionary[kUserMentionIndices];
    }
    
    if (![dictionary[kUserMentionName] isKindOfClass:[NSNull class]]) {
        self.name = dictionary[kUserMentionName];
    }
    
    if (![dictionary[kUserMentionScreenName] isKindOfClass:[NSNull class]]) {
        self.screenName = dictionary[kUserMentionScreenName];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    dictionary[kUserMentionIdField] = @(self.idField);
    
    if (self.idStr != nil) {
        dictionary[kUserMentionIdStr] = self.idStr;
    }
    
    if (self.indices != nil) {
        dictionary[kUserMentionIndices] = self.indices;
    }
    
    if (self.name != nil) {
        dictionary[kUserMentionName] = self.name;
    }
    
    if (self.screenName != nil) {
        dictionary[kUserMentionScreenName] = self.screenName;
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
    [aCoder encodeObject:@(self.idField) forKey:kUserMentionIdField];
    
    if (self.idStr != nil) {
        [aCoder encodeObject:self.idStr forKey:kUserMentionIdStr];
    }
    
    if (self.indices != nil) {
        [aCoder encodeObject:self.indices forKey:kUserMentionIndices];
    }
    
    if (self.name != nil) {
        [aCoder encodeObject:self.name forKey:kUserMentionName];
    }
    
    if (self.screenName != nil) {
        [aCoder encodeObject:self.screenName forKey:kUserMentionScreenName];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.name       = [aDecoder decodeObjectForKey:kUserMentionName];
    self.idStr      = [aDecoder decodeObjectForKey:kUserMentionIdStr];
    self.indices    = [aDecoder decodeObjectForKey:kUserMentionIndices];
    self.screenName = [aDecoder decodeObjectForKey:kUserMentionScreenName];
    self.idField    = [[aDecoder decodeObjectForKey:kUserMentionIdField] integerValue];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    UserMention *copy = [UserMention new];
    
    copy.idField    = self.idField;
    copy.name       = [self.name copy];
    copy.idStr      = [self.idStr copy];
    copy.indices    = [self.indices copy];
    copy.screenName = [self.screenName copy];
    return copy;
}

@end
