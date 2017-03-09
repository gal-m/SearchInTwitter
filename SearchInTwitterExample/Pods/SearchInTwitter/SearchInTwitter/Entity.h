//
//	Entity.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserMention.h"
#import "Description.h"

@interface Entity : NSObject

@property (nonatomic, strong) NSArray     * urls;
@property (nonatomic, strong) NSArray     * symbols;
@property (nonatomic, strong) NSArray     * hashtags;
@property (nonatomic, strong) NSArray     * userMentions;
@property (nonatomic, strong) Description * descriptionField;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
