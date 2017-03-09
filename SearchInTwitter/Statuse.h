//
//	Statuse.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import "User.h"
#import "Entity.h"
#import "Metadata.h"
#import <UIKit/UIKit.h>
#import "RetweetedStatu.h"

@interface Statuse : NSObject

@property (nonatomic, strong) NSObject       * geo;
@property (nonatomic, strong) NSString       * lang;
@property (nonatomic, strong) NSString       * text;
@property (nonatomic, strong) User           * user;
@property (nonatomic, strong) NSString       * idStr;
@property (nonatomic, strong) NSObject       * place;
@property (nonatomic, strong) NSString       * source;
@property (nonatomic, assign) NSInteger        idField;
@property (nonatomic, strong) Entity         * entities;
@property (nonatomic, strong) Metadata       * metadata;
@property (nonatomic, strong) NSString       * createdAt;
@property (nonatomic, assign) BOOL             favorited;
@property (nonatomic, assign) BOOL             retweeted;
@property (nonatomic, assign) BOOL             truncated;
@property (nonatomic, strong) NSObject       * coordinates;
@property (nonatomic, strong) NSObject       * contributors;
@property (nonatomic, assign) NSInteger        retweetCount;
@property (nonatomic, assign) NSInteger        favoriteCount;
@property (nonatomic, assign) BOOL             isQuoteStatus;
@property (nonatomic, strong) NSObject       * inReplyToUserId;
@property (nonatomic, strong) RetweetedStatu * retweetedStatus;
@property (nonatomic, strong) NSObject       * inReplyToStatusId;
@property (nonatomic, assign) BOOL             possiblySensitive;
@property (nonatomic, strong) NSObject       * inReplyToUserIdStr;
@property (nonatomic, strong) NSObject       * inReplyToScreenName;
@property (nonatomic, strong) NSObject       * inReplyToStatusIdStr;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
