//
//	User.h
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

#import "Entity.h"
#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, strong) NSObject  * url;
@property (nonatomic, strong) NSString  * lang;
@property (nonatomic, strong) NSString  * name;
@property (nonatomic, strong) NSString  * idStr;
@property (nonatomic, assign) NSInteger   idField;
@property (nonatomic, strong) Entity    * entities;
@property (nonatomic, strong) NSString  * location;
@property (nonatomic, strong) NSObject  * timeZone;
@property (nonatomic, assign) BOOL        verified;
@property (nonatomic, strong) NSString  * createdAt;
@property (nonatomic, strong) NSObject  * following;
@property (nonatomic, strong) NSObject  * utcOffset;
@property (nonatomic, assign) BOOL        geoEnabled;
@property (nonatomic, strong) NSString  * screenName;
@property (nonatomic, assign) NSInteger   listedCount;
@property (nonatomic, assign) NSInteger   friendsCount;
@property (nonatomic, assign) BOOL        isTranslator;
@property (nonatomic, strong) NSObject  * notifications;
@property (nonatomic, assign) NSInteger   statusesCount;
@property (nonatomic, assign) BOOL        defaultProfile;
@property (nonatomic, assign) NSInteger   followersCount;
@property (nonatomic, assign) BOOL        protectedField;
@property (nonatomic, strong) NSString  * translatorType;
@property (nonatomic, assign) NSInteger   favouritesCount;
@property (nonatomic, strong) NSString  * profileImageUrl;
@property (nonatomic, strong) NSString  * descriptionField;
@property (nonatomic, strong) NSString  * profileBannerUrl;
@property (nonatomic, strong) NSString  * profileLinkColor;
@property (nonatomic, strong) NSString  * profileTextColor;
@property (nonatomic, strong) NSObject  * followRequestSent;
@property (nonatomic, assign) BOOL        hasExtendedProfile;
@property (nonatomic, assign) BOOL        contributorsEnabled;
@property (nonatomic, assign) BOOL        defaultProfileImage;
@property (nonatomic, assign) BOOL        isTranslationEnabled;
@property (nonatomic, strong) NSString  * profileImageUrlHttps;
@property (nonatomic, assign) BOOL        profileBackgroundTile;
@property (nonatomic, strong) NSString  * profileBackgroundColor;
@property (nonatomic, strong) NSString  * profileSidebarFillColor;
@property (nonatomic, strong) NSObject  * profileBackgroundImageUrl;
@property (nonatomic, strong) NSString  * profileSidebarBorderColor;
@property (nonatomic, assign) BOOL        profileUseBackgroundImage;
@property (nonatomic, strong) NSObject  * profileBackgroundImageUrlHttps;

- (NSDictionary *)toDictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;



@end
