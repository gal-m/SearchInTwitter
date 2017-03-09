//
//	UserMention.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserMention : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * idStr;
@property (nonatomic, assign) NSInteger  idField;
@property (nonatomic, strong) NSArray  * indices;
@property (nonatomic, strong) NSString * screenName;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
