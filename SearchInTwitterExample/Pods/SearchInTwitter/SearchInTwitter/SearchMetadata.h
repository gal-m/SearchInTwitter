//
//	SearchMetadata.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchMetadata : NSObject

@property (nonatomic, assign) NSInteger   count;
@property (nonatomic, assign) NSInteger   maxId;
@property (nonatomic, strong) NSString  * query;
@property (nonatomic, assign) NSInteger   sinceId;
@property (nonatomic, strong) NSString  * maxIdStr;
@property (nonatomic, strong) NSString  * refreshUrl;
@property (nonatomic, strong) NSString  * sinceIdStr;
@property (nonatomic, assign) CGFloat     completedIn;
@property (nonatomic, strong) NSString  * nextResults;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
