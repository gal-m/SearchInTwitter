//
//	SearchTwitterResult.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import "Statuse.h"
#import <UIKit/UIKit.h>
#import "SearchMetadata.h"


@interface SearchTwitterResult : NSObject

@property (nonatomic, strong) NSArray        * statuses;
@property (nonatomic, strong) SearchMetadata * searchMetadata;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;



/*!
 
 SearchTwitterResultCallback
 
 Result callback, returning a SearchTwitterResult
 Will return an error object, if any error encountered
 
 */
typedef void (^SearchTwitterResultCallback)(SearchTwitterResult *result, NSError *error );

@end
