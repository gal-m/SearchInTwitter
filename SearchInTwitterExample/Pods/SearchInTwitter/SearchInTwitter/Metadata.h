//
//	Metadata.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Metadata : NSObject

@property (nonatomic, strong) NSString * resultType;
@property (nonatomic, strong) NSString * isoLanguageCode;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
