//
//	Description.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//


#import "Description.h"

NSString *const kDescriptionUrls = @"urls";

@interface Description ()
@end
@implementation Description



/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kDescriptionUrls] isKindOfClass:[NSNull class]]) {
        self.urls = dictionary[kDescriptionUrls];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.urls != nil) {
        dictionary[kDescriptionUrls] = self.urls;
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
    
    if (self.urls != nil) {
        [aCoder encodeObject:self.urls forKey:kDescriptionUrls];
    }
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.urls = [aDecoder decodeObjectForKey:kDescriptionUrls];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    Description *copy = [Description new];
    copy.urls = [self.urls copy];
    return copy;
}



@end
