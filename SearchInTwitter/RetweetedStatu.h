//
//	RetweetedStatu.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import "User.h"
#import "Entity.h"
#import "Metadata.h"
#import <UIKit/UIKit.h>

@interface RetweetedStatu : NSObject

@property (nonatomic, strong) NSObject  * geo;
@property (nonatomic, strong) User      * user;
@property (nonatomic, strong) NSString  * lang;
@property (nonatomic, strong) NSString  * text;
@property (nonatomic, strong) NSString  * idStr;
@property (nonatomic, strong) NSObject  * place;
@property (nonatomic, strong) NSString  * source;
@property (nonatomic, assign) NSInteger   idField;
@property (nonatomic, strong) Entity    * entities;
@property (nonatomic, strong) Metadata  * metadata;
@property (nonatomic, assign) BOOL        favorited;
@property (nonatomic, strong) NSString  * createdAt;
@property (nonatomic, assign) BOOL          truncated;
@property (nonatomic, strong) NSObject  * coordinates;
@property (nonatomic, assign) NSInteger   retweetCount;
@property (nonatomic, strong) NSObject  * contributors;
@property (nonatomic, assign) BOOL        isQuoteStatus;
@property (nonatomic, assign) NSInteger   favoriteCount;
@property (nonatomic, assign) BOOL             retweeted;
@property (nonatomic, assign) NSInteger   inReplyToUserId;
@property (nonatomic, assign) NSInteger   inReplyToStatusId;
@property (nonatomic, strong) NSString  * inReplyToUserIdStr;
@property (nonatomic, strong) NSString  * inReplyToScreenName;
@property (nonatomic, strong) NSString  * inReplyToStatusIdStr;


- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
