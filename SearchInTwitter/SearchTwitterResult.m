//
//	SearchTwitterResult.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "SearchTwitterResult.h"

NSString *const kSearchTwitterResultStatuses       = @"statuses";
NSString *const kSearchTwitterResultMetadata = @"search_metadata";

@interface SearchTwitterResult ()
@end
@implementation SearchTwitterResult



/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kSearchTwitterResultMetadata] isKindOfClass:[NSNull class]]) {
        self.searchMetadata = [[SearchMetadata alloc] initWithDictionary:dictionary[kSearchTwitterResultMetadata]];
    }
    
    if (dictionary[kSearchTwitterResultStatuses] != nil && [dictionary[kSearchTwitterResultStatuses] isKindOfClass:[NSArray class]]) {
        NSArray * statusesDictionaries = dictionary[kSearchTwitterResultStatuses];
        NSMutableArray * statusesItems = [NSMutableArray array];
        
        for (NSDictionary * statusesDictionary in statusesDictionaries) {
            Statuse * statusesItem = [[Statuse alloc] initWithDictionary:statusesDictionary];
            [statusesItems addObject:statusesItem];
        }
        self.statuses = statusesItems;
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    
    if (self.searchMetadata != nil) {
        dictionary[kSearchTwitterResultMetadata] = [self.searchMetadata toDictionary];
    }
    
    if (self.statuses != nil) {
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        
        for(Statuse * statusesElement in self.statuses) {
            [dictionaryElements addObject:[statusesElement toDictionary]];
        }
        dictionary[kSearchTwitterResultStatuses] = dictionaryElements;
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
    
    if (self.searchMetadata != nil) {
        [aCoder encodeObject:self.searchMetadata forKey:kSearchTwitterResultMetadata];
    }
    
    if (self.statuses != nil) {
        [aCoder encodeObject:self.statuses forKey:kSearchTwitterResultStatuses];
    }
    
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    self.searchMetadata = [aDecoder decodeObjectForKey:kSearchTwitterResultMetadata];
    self.statuses = [aDecoder decodeObjectForKey:kSearchTwitterResultStatuses];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    SearchTwitterResult *copy = [SearchTwitterResult new];
    
    copy.searchMetadata = [self.searchMetadata copy];
    copy.statuses = [self.statuses copy];
    return copy;
}


@end
