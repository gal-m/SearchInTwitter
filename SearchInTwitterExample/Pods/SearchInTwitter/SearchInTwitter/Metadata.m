//
//	Metadata.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "Metadata.h"

NSString *const kMetadataResultType      = @"result_type";
NSString *const kMetadataIsoLanguageCode = @"iso_language_code";

@interface Metadata ()
@end
@implementation Metadata



/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kMetadataIsoLanguageCode] isKindOfClass:[NSNull class]]) {
        self.isoLanguageCode = dictionary[kMetadataIsoLanguageCode];
    }
    if (![dictionary[kMetadataResultType] isKindOfClass:[NSNull class]]) {
        self.resultType = dictionary[kMetadataResultType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.isoLanguageCode != nil) {
        dictionary[kMetadataIsoLanguageCode] = self.isoLanguageCode;
    }
    
    if (self.resultType != nil) {
        dictionary[kMetadataResultType] = self.resultType;
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
    
    if (self.isoLanguageCode != nil) {
        [aCoder encodeObject:self.isoLanguageCode forKey:kMetadataIsoLanguageCode];
    }
    
    if (self.resultType != nil) {
        [aCoder encodeObject:self.resultType forKey:kMetadataResultType];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.isoLanguageCode = [aDecoder decodeObjectForKey:kMetadataIsoLanguageCode];
    self.resultType = [aDecoder decodeObjectForKey:kMetadataResultType];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    Metadata *copy = [Metadata new];
    copy.isoLanguageCode = [self.isoLanguageCode copy];
    copy.resultType = [self.resultType copy];
    return copy;
}


@end
