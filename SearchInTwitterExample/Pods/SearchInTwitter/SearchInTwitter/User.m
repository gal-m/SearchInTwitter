//
//	User.m
//
//	Create by Gal Mirkin on 7/3/2017
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//



#import "User.h"

NSString *const kUserIdField                        = @"id";
NSString *const kUserUrl                            = @"url";
NSString *const kUserLang                           = @"lang";
NSString *const kUserName                           = @"name";
NSString *const kUserIdStr                          = @"id_str";
NSString *const kUserEntities                       = @"entities";
NSString *const kUserLocation                       = @"location";
NSString *const kUserVerified                       = @"verified";
NSString *const kUserFollowing                      = @"following";
NSString *const kUserProtectedField                 = @"protected";
NSString *const kUserTimeZone                       = @"time_zone";
NSString *const kUserCreatedAt                      = @"created_at";
NSString *const kUserUtcOffset                      = @"utc_offset";
NSString *const kUserDescriptionField               = @"description";
NSString *const kUserGeoEnabled                     = @"geo_enabled";
NSString *const kUserScreenName                     = @"screen_name";
NSString *const kUserListedCount                    = @"listed_count";
NSString *const kUserFriendsCount                   = @"friends_count";
NSString *const kUserIsTranslator                   = @"is_translator";
NSString *const kUserNotifications                  = @"notifications";
NSString *const kUserStatusesCount                  = @"statuses_count";
NSString *const kUserDefaultProfile                 = @"default_profile";
NSString *const kUserFollowersCount                 = @"followers_count";
NSString *const kUserTranslatorType                 = @"translator_type";
NSString *const kUserFavouritesCount                = @"favourites_count";
NSString *const kUserProfileImageUrl                = @"profile_image_url";
NSString *const kUserProfileBannerUrl               = @"profile_banner_url";
NSString *const kUserProfileLinkColor               = @"profile_link_color";
NSString *const kUserProfileTextColor               = @"profile_text_color";
NSString *const kUserFollowRequestSent              = @"follow_request_sent";
NSString *const kUserContributorsEnabled            = @"contributors_enabled";
NSString *const kUserHasExtendedProfile             = @"has_extended_profile";
NSString *const kUserDefaultProfileImage            = @"default_profile_image";
NSString *const kUserIsTranslationEnabled           = @"is_translation_enabled";
NSString *const kUserProfileBackgroundTile          = @"profile_background_tile";
NSString *const kUserProfileImageUrlHttps           = @"profile_image_url_https";
NSString *const kUserProfileBackgroundColor         = @"profile_background_color";
NSString *const kUserProfileSidebarFillColor        = @"profile_sidebar_fill_color";
NSString *const kUserProfileBackgroundImageUrl      = @"profile_background_image_url";
NSString *const kUserProfileSidebarBorderColor      = @"profile_sidebar_border_color";
NSString *const kUserProfileUseBackgroundImage      = @"profile_use_background_image";
NSString *const kUserProfileBackgroundImageUrlHttps = @"profile_background_image_url_https";

@interface User ()
@end
@implementation User




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (![dictionary[kUserContributorsEnabled] isKindOfClass:[NSNull class]]) {
        self.contributorsEnabled = [dictionary[kUserContributorsEnabled] boolValue];
    }
    
    if (![dictionary[kUserCreatedAt] isKindOfClass:[NSNull class]]) {
        self.createdAt = dictionary[kUserCreatedAt];
    }
    if (![dictionary[kUserDefaultProfile] isKindOfClass:[NSNull class]]) {
        self.defaultProfile = [dictionary[kUserDefaultProfile] boolValue];
    }
    
    if (![dictionary[kUserDefaultProfileImage] isKindOfClass:[NSNull class]]) {
        self.defaultProfileImage = [dictionary[kUserDefaultProfileImage] boolValue];
    }
    
    if (![dictionary[kUserDescriptionField] isKindOfClass:[NSNull class]]) {
        self.descriptionField = dictionary[kUserDescriptionField];
    }
    
    if (![dictionary[kUserEntities] isKindOfClass:[NSNull class]]) {
        self.entities = [[Entity alloc] initWithDictionary:dictionary[kUserEntities]];
    }
    
    if (![dictionary[kUserFavouritesCount] isKindOfClass:[NSNull class]]) {
        self.favouritesCount = [dictionary[kUserFavouritesCount] integerValue];
    }
    
    if (![dictionary[kUserFollowRequestSent] isKindOfClass:[NSNull class]]) {
        self.followRequestSent = dictionary[kUserFollowRequestSent];
    }
    
    if (![dictionary[kUserFollowersCount] isKindOfClass:[NSNull class]]) {
        self.followersCount = [dictionary[kUserFollowersCount] integerValue];
    }
    
    if (![dictionary[kUserFollowing] isKindOfClass:[NSNull class]]) {
        self.following = dictionary[kUserFollowing];
    }
    
    if (![dictionary[kUserFriendsCount] isKindOfClass:[NSNull class]]) {
        self.friendsCount = [dictionary[kUserFriendsCount] integerValue];
    }
    
    if (![dictionary[kUserGeoEnabled] isKindOfClass:[NSNull class]]) {
        self.geoEnabled = [dictionary[kUserGeoEnabled] boolValue];
    }
    
    if (![dictionary[kUserHasExtendedProfile] isKindOfClass:[NSNull class]]) {
        self.hasExtendedProfile = [dictionary[kUserHasExtendedProfile] boolValue];
    }
    
    if (![dictionary[kUserIdField] isKindOfClass:[NSNull class]]) {
        self.idField = [dictionary[kUserIdField] integerValue];
    }
    
    if (![dictionary[kUserIdStr] isKindOfClass:[NSNull class]]) {
        self.idStr = dictionary[kUserIdStr];
    }
    
    if (![dictionary[kUserIsTranslationEnabled] isKindOfClass:[NSNull class]]) {
        self.isTranslationEnabled = [dictionary[kUserIsTranslationEnabled] boolValue];
    }
    
    if (![dictionary[kUserIsTranslator] isKindOfClass:[NSNull class]]) {
        self.isTranslator = [dictionary[kUserIsTranslator] boolValue];
    }
    
    if (![dictionary[kUserLang] isKindOfClass:[NSNull class]]) {
        self.lang = dictionary[kUserLang];
    }
    
    if (![dictionary[kUserListedCount] isKindOfClass:[NSNull class]]) {
        self.listedCount = [dictionary[kUserListedCount] integerValue];
    }
    
    if (![dictionary[kUserLocation] isKindOfClass:[NSNull class]]) {
        self.location = dictionary[kUserLocation];
    }
    
    if (![dictionary[kUserName] isKindOfClass:[NSNull class]]) {
        self.name = dictionary[kUserName];
    }
    
    if (![dictionary[kUserNotifications] isKindOfClass:[NSNull class]]) {
        self.notifications = dictionary[kUserNotifications];
    }
    
    if (![dictionary[kUserProfileBackgroundColor] isKindOfClass:[NSNull class]]) {
        self.profileBackgroundColor = dictionary[kUserProfileBackgroundColor];
    }
    
    if (![dictionary[kUserProfileBackgroundImageUrl] isKindOfClass:[NSNull class]]) {
        self.profileBackgroundImageUrl = dictionary[kUserProfileBackgroundImageUrl];
    }
    
    if (![dictionary[kUserProfileBackgroundImageUrlHttps] isKindOfClass:[NSNull class]]) {
        self.profileBackgroundImageUrlHttps = dictionary[kUserProfileBackgroundImageUrlHttps];
    }
    
    if (![dictionary[kUserProfileBackgroundTile] isKindOfClass:[NSNull class]]) {
        self.profileBackgroundTile = [dictionary[kUserProfileBackgroundTile] boolValue];
    }
    
    if (![dictionary[kUserProfileBannerUrl] isKindOfClass:[NSNull class]]) {
        self.profileBannerUrl = dictionary[kUserProfileBannerUrl];
    }
    
    if (![dictionary[kUserProfileImageUrl] isKindOfClass:[NSNull class]]) {
        self.profileImageUrl = dictionary[kUserProfileImageUrl];
    }
    
    if (![dictionary[kUserProfileImageUrlHttps] isKindOfClass:[NSNull class]]) {
        self.profileImageUrlHttps = dictionary[kUserProfileImageUrlHttps];
    }
    
    if (![dictionary[kUserProfileLinkColor] isKindOfClass:[NSNull class]]) {
        self.profileLinkColor = dictionary[kUserProfileLinkColor];
    }
    
    if (![dictionary[kUserProfileSidebarBorderColor] isKindOfClass:[NSNull class]]) {
        self.profileSidebarBorderColor = dictionary[kUserProfileSidebarBorderColor];
    }
    
    if (![dictionary[kUserProfileSidebarFillColor] isKindOfClass:[NSNull class]]) {
        self.profileSidebarFillColor = dictionary[kUserProfileSidebarFillColor];
    }
    
    if (![dictionary[kUserProfileTextColor] isKindOfClass:[NSNull class]]) {
        self.profileTextColor = dictionary[kUserProfileTextColor];
    }
    
    if (![dictionary[kUserProfileUseBackgroundImage] isKindOfClass:[NSNull class]]) {
        self.profileUseBackgroundImage = [dictionary[kUserProfileUseBackgroundImage] boolValue];
    }
    
    if (![dictionary[kUserProtectedField] isKindOfClass:[NSNull class]]) {
        self.protectedField = [dictionary[kUserProtectedField] boolValue];
    }
    
    if (![dictionary[kUserScreenName] isKindOfClass:[NSNull class]]) {
        self.screenName = dictionary[kUserScreenName];
    }
    
    if (![dictionary[kUserStatusesCount] isKindOfClass:[NSNull class]]) {
        self.statusesCount = [dictionary[kUserStatusesCount] integerValue];
    }
    
    if (![dictionary[kUserTimeZone] isKindOfClass:[NSNull class]]) {
        self.timeZone = dictionary[kUserTimeZone];
    }
    
    if (![dictionary[kUserTranslatorType] isKindOfClass:[NSNull class]]) {
        self.translatorType = dictionary[kUserTranslatorType];
    }
    
    if (![dictionary[kUserUrl] isKindOfClass:[NSNull class]]) {
        self.url = dictionary[kUserUrl];
    }
    
    if (![dictionary[kUserUtcOffset] isKindOfClass:[NSNull class]]) {
        self.utcOffset = dictionary[kUserUtcOffset];
    }
    
    if (![dictionary[kUserVerified] isKindOfClass:[NSNull class]]) {
        self.verified = [dictionary[kUserVerified] boolValue];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary {
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    dictionary[kUserContributorsEnabled] = @(self.contributorsEnabled);
    
    if (self.createdAt != nil) {
        dictionary[kUserCreatedAt] = self.createdAt;
    }
    dictionary[kUserDefaultProfile] = @(self.defaultProfile);
    dictionary[kUserDefaultProfileImage] = @(self.defaultProfileImage);
    
    if (self.descriptionField != nil) {
        dictionary[kUserDescriptionField] = self.descriptionField;
    }
    
    if (self.entities != nil) {
        dictionary[kUserEntities] = [self.entities toDictionary];
    }
    dictionary[kUserFavouritesCount] = @(self.favouritesCount);
    
    if (self.followRequestSent != nil) {
        dictionary[kUserFollowRequestSent] = self.followRequestSent;
    }
    dictionary[kUserFollowersCount] = @(self.followersCount);
    
    if (self.following != nil) {
        dictionary[kUserFollowing] = self.following;
    }
    dictionary[kUserFriendsCount] = @(self.friendsCount);
    dictionary[kUserGeoEnabled] = @(self.geoEnabled);
    dictionary[kUserHasExtendedProfile] = @(self.hasExtendedProfile);
    dictionary[kUserIdField] = @(self.idField);
    
    if (self.idStr != nil) {
        dictionary[kUserIdStr] = self.idStr;
    }
    dictionary[kUserIsTranslationEnabled] = @(self.isTranslationEnabled);
    dictionary[kUserIsTranslator] = @(self.isTranslator);
    
    if (self.lang != nil) {
        dictionary[kUserLang] = self.lang;
    }
    dictionary[kUserListedCount] = @(self.listedCount);
    
    if (self.location != nil) {
        dictionary[kUserLocation] = self.location;
    }
    
    if (self.name != nil) {
        dictionary[kUserName] = self.name;
    }
    
    if (self.notifications != nil) {
        dictionary[kUserNotifications] = self.notifications;
    }
    
    if (self.profileBackgroundColor != nil) {
        dictionary[kUserProfileBackgroundColor] = self.profileBackgroundColor;
    }
    
    if (self.profileBackgroundImageUrl != nil) {
        dictionary[kUserProfileBackgroundImageUrl] = self.profileBackgroundImageUrl;
    }
    
    if (self.profileBackgroundImageUrlHttps != nil) {
        dictionary[kUserProfileBackgroundImageUrlHttps] = self.profileBackgroundImageUrlHttps;
    }
    
    dictionary[kUserProfileBackgroundTile] = @(self.profileBackgroundTile);
    if (self.profileBannerUrl != nil) {
        dictionary[kUserProfileBannerUrl] = self.profileBannerUrl;
    }
    
    if (self.profileImageUrl != nil) {
        dictionary[kUserProfileImageUrl] = self.profileImageUrl;
    }
    
    if (self.profileImageUrlHttps != nil) {
        dictionary[kUserProfileImageUrlHttps] = self.profileImageUrlHttps;
    }
    
    if (self.profileLinkColor != nil) {
        dictionary[kUserProfileLinkColor] = self.profileLinkColor;
    }
    
    if (self.profileSidebarBorderColor != nil) {
        dictionary[kUserProfileSidebarBorderColor] = self.profileSidebarBorderColor;
    }
    
    if (self.profileSidebarFillColor != nil) {
        dictionary[kUserProfileSidebarFillColor] = self.profileSidebarFillColor;
    }
    
    if (self.profileTextColor != nil) {
        dictionary[kUserProfileTextColor] = self.profileTextColor;
    }
    dictionary[kUserProfileUseBackgroundImage] = @(self.profileUseBackgroundImage);
    dictionary[kUserProtectedField] = @(self.protectedField);
    
    if (self.screenName != nil) {
        dictionary[kUserScreenName] = self.screenName;
    }
    dictionary[kUserStatusesCount] = @(self.statusesCount);
    
    if (self.timeZone != nil) {
        dictionary[kUserTimeZone] = self.timeZone;
    }
    
    if (self.translatorType != nil) {
        dictionary[kUserTranslatorType] = self.translatorType;
    }
    
    if (self.url != nil) {
        dictionary[kUserUrl] = self.url;
    }
    
    if (self.utcOffset != nil) {
        dictionary[kUserUtcOffset] = self.utcOffset;
    }
    dictionary[kUserVerified] = @(self.verified);
    return dictionary;
}


/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:@(self.contributorsEnabled) forKey:kUserContributorsEnabled];
    
    if (self.createdAt != nil) {
        [aCoder encodeObject:self.createdAt forKey:kUserCreatedAt];
    }
    [aCoder encodeObject:@(self.defaultProfile) forKey:kUserDefaultProfile];
    [aCoder encodeObject:@(self.defaultProfileImage) forKey:kUserDefaultProfileImage];
    
    if (self.descriptionField != nil) {
        [aCoder encodeObject:self.descriptionField forKey:kUserDescriptionField];
    }
    
    if (self.entities != nil) {
        [aCoder encodeObject:self.entities forKey:kUserEntities];
    }
    [aCoder encodeObject:@(self.favouritesCount) forKey:kUserFavouritesCount];
    
    if (self.followRequestSent != nil) {
        [aCoder encodeObject:self.followRequestSent forKey:kUserFollowRequestSent];
    }
    [aCoder encodeObject:@(self.followersCount) forKey:kUserFollowersCount];
    
    if (self.following != nil) {
        [aCoder encodeObject:self.following forKey:kUserFollowing];
    }
    [aCoder encodeObject:@(self.friendsCount) forKey:kUserFriendsCount];
    [aCoder encodeObject:@(self.geoEnabled) forKey:kUserGeoEnabled];
    [aCoder encodeObject:@(self.hasExtendedProfile) forKey:kUserHasExtendedProfile];
    [aCoder encodeObject:@(self.idField) forKey:kUserIdField];
    
    if (self.idStr != nil) {
        [aCoder encodeObject:self.idStr forKey:kUserIdStr];
    }
    [aCoder encodeObject:@(self.isTranslationEnabled) forKey:kUserIsTranslationEnabled];
    [aCoder encodeObject:@(self.isTranslator) forKey:kUserIsTranslator];
    
    if (self.lang != nil) {
        [aCoder encodeObject:self.lang forKey:kUserLang];
    }
    [aCoder encodeObject:@(self.listedCount) forKey:kUserListedCount];
    
    if (self.location != nil) {
        [aCoder encodeObject:self.location forKey:kUserLocation];
    }
    
    if (self.name != nil) {
        [aCoder encodeObject:self.name forKey:kUserName];
    }
    
    if (self.notifications != nil) {
        [aCoder encodeObject:self.notifications forKey:kUserNotifications];
    }
    
    if (self.profileBackgroundColor != nil) {
        [aCoder encodeObject:self.profileBackgroundColor forKey:kUserProfileBackgroundColor];
    }
    
    if (self.profileBackgroundImageUrl != nil) {
        [aCoder encodeObject:self.profileBackgroundImageUrl forKey:kUserProfileBackgroundImageUrl];
    }
    
    if (self.profileBackgroundImageUrlHttps != nil) {
        [aCoder encodeObject:self.profileBackgroundImageUrlHttps forKey:kUserProfileBackgroundImageUrlHttps];
    }
    [aCoder encodeObject:@(self.profileBackgroundTile) forKey:kUserProfileBackgroundTile];
    
    if (self.profileBannerUrl != nil) {
        [aCoder encodeObject:self.profileBannerUrl forKey:kUserProfileBannerUrl];
    }
    
    if (self.profileImageUrl != nil) {
        [aCoder encodeObject:self.profileImageUrl forKey:kUserProfileImageUrl];
    }
    
    if (self.profileImageUrlHttps != nil) {
        [aCoder encodeObject:self.profileImageUrlHttps forKey:kUserProfileImageUrlHttps];
    }
    
    if (self.profileLinkColor != nil) {
        [aCoder encodeObject:self.profileLinkColor forKey:kUserProfileLinkColor];
    }
    
    if (self.profileSidebarBorderColor != nil) {
        [aCoder encodeObject:self.profileSidebarBorderColor forKey:kUserProfileSidebarBorderColor];
    }
    
    if (self.profileSidebarFillColor != nil) {
        [aCoder encodeObject:self.profileSidebarFillColor forKey:kUserProfileSidebarFillColor];
    }
    
    if (self.profileTextColor != nil) {
        [aCoder encodeObject:self.profileTextColor forKey:kUserProfileTextColor];
    }
    [aCoder encodeObject:@(self.profileUseBackgroundImage) forKey:kUserProfileUseBackgroundImage];
    [aCoder encodeObject:@(self.protectedField) forKey:kUserProtectedField];
    
    if (self.screenName != nil) {
        [aCoder encodeObject:self.screenName forKey:kUserScreenName];
    }
    [aCoder encodeObject:@(self.statusesCount) forKey:kUserStatusesCount];
    
    if (self.timeZone != nil) {
        [aCoder encodeObject:self.timeZone forKey:kUserTimeZone];
    }
    
    if (self.translatorType != nil) {
        [aCoder encodeObject:self.translatorType forKey:kUserTranslatorType];
    }
    
    if (self.url != nil) {
        [aCoder encodeObject:self.url forKey:kUserUrl];
    }
    
    if (self.utcOffset != nil) {
        [aCoder encodeObject:self.utcOffset forKey:kUserUtcOffset];
    }
    [aCoder encodeObject:@(self.verified) forKey:kUserVerified];
}


/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    self.url                            = [aDecoder decodeObjectForKey:kUserUrl];
    self.lang                           = [aDecoder decodeObjectForKey:kUserLang];
    self.name                           = [aDecoder decodeObjectForKey:kUserName];
    self.idStr                          = [aDecoder decodeObjectForKey:kUserIdStr];
    self.entities                       = [aDecoder decodeObjectForKey:kUserEntities];
    self.location                       = [aDecoder decodeObjectForKey:kUserLocation];
    self.timeZone                       = [aDecoder decodeObjectForKey:kUserTimeZone];
    self.createdAt                      = [aDecoder decodeObjectForKey:kUserCreatedAt];
    self.following                      = [aDecoder decodeObjectForKey:kUserFollowing];
    self.utcOffset                      = [aDecoder decodeObjectForKey:kUserUtcOffset];
    self.screenName                     = [aDecoder decodeObjectForKey:kUserScreenName];
    self.notifications                  = [aDecoder decodeObjectForKey:kUserNotifications];
    self.translatorType                 = [aDecoder decodeObjectForKey:kUserTranslatorType];
    self.profileImageUrl                = [aDecoder decodeObjectForKey:kUserProfileImageUrl];
    self.descriptionField               = [aDecoder decodeObjectForKey:kUserDescriptionField];
    self.profileBannerUrl               = [aDecoder decodeObjectForKey:kUserProfileBannerUrl];
    self.profileLinkColor               = [aDecoder decodeObjectForKey:kUserProfileLinkColor];
    self.profileTextColor               = [aDecoder decodeObjectForKey:kUserProfileTextColor];
    self.followRequestSent              = [aDecoder decodeObjectForKey:kUserFollowRequestSent];
    self.profileImageUrlHttps           = [aDecoder decodeObjectForKey:kUserProfileImageUrlHttps];
    self.verified                       = [[aDecoder decodeObjectForKey:kUserVerified] boolValue];
    self.geoEnabled                     = [[aDecoder decodeObjectForKey:kUserGeoEnabled] boolValue];
    self.idField                        = [[aDecoder decodeObjectForKey:kUserIdField] integerValue];
    self.profileBackgroundColor         = [aDecoder decodeObjectForKey:kUserProfileBackgroundColor];
    self.profileSidebarFillColor        = [aDecoder decodeObjectForKey:kUserProfileSidebarFillColor];
    self.isTranslator                   = [[aDecoder decodeObjectForKey:kUserIsTranslator] boolValue];
    self.profileBackgroundImageUrl      = [aDecoder decodeObjectForKey:kUserProfileBackgroundImageUrl];
    self.profileSidebarBorderColor      = [aDecoder decodeObjectForKey:kUserProfileSidebarBorderColor];
    self.defaultProfile                 = [[aDecoder decodeObjectForKey:kUserDefaultProfile] boolValue];
    self.listedCount                    = [[aDecoder decodeObjectForKey:kUserListedCount] integerValue];
    self.protectedField                 = [[aDecoder decodeObjectForKey:kUserProtectedField] boolValue];
    self.friendsCount                   = [[aDecoder decodeObjectForKey:kUserFriendsCount] integerValue];
    self.statusesCount                  = [[aDecoder decodeObjectForKey:kUserStatusesCount] integerValue];
    self.followersCount                 = [[aDecoder decodeObjectForKey:kUserFollowersCount] integerValue];
    self.favouritesCount                = [[aDecoder decodeObjectForKey:kUserFavouritesCount] integerValue];
    self.hasExtendedProfile             = [[aDecoder decodeObjectForKey:kUserHasExtendedProfile] boolValue];
    self.profileBackgroundImageUrlHttps = [aDecoder decodeObjectForKey:kUserProfileBackgroundImageUrlHttps];
    self.contributorsEnabled            = [[aDecoder decodeObjectForKey:kUserContributorsEnabled] boolValue];
    self.defaultProfileImage            = [[aDecoder decodeObjectForKey:kUserDefaultProfileImage] boolValue];
    self.isTranslationEnabled           = [[aDecoder decodeObjectForKey:kUserIsTranslationEnabled] boolValue];
    self.profileBackgroundTile          = [[aDecoder decodeObjectForKey:kUserProfileBackgroundTile] boolValue];
    self.profileUseBackgroundImage      = [[aDecoder decodeObjectForKey:kUserProfileUseBackgroundImage] boolValue];
    return self;
}


/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone {
    User *copy = [User new];
    
    copy.idField                        = self.idField;
    copy.verified                       = self.verified;
    copy.geoEnabled                     = self.geoEnabled;
    copy.url                            = [self.url copy];
    copy.lang                           = [self.lang copy];
    copy.listedCount                    = self.listedCount;
    copy.name                           = [self.name copy];
    copy.friendsCount                   = self.friendsCount;
    copy.idStr                          = [self.idStr copy];
    copy.isTranslator                   = self.isTranslator;
    copy.statusesCount                  = self.statusesCount;
    copy.defaultProfile                 = self.defaultProfile;
    copy.followersCount                 = self.followersCount;
    copy.protectedField                 = self.protectedField;
    copy.entities                       = [self.entities copy];
    copy.favouritesCount                = self.favouritesCount;
    copy.location                       = [self.location copy];
    copy.timeZone                       = [self.timeZone copy];
    copy.createdAt                      = [self.createdAt copy];
    copy.following                      = [self.following copy];
    copy.utcOffset                      = [self.utcOffset copy];
    copy.screenName                     = [self.screenName copy];
    copy.hasExtendedProfile             = self.hasExtendedProfile;
    copy.contributorsEnabled            = self.contributorsEnabled;
    copy.defaultProfileImage            = self.defaultProfileImage;
    copy.isTranslationEnabled           = self.isTranslationEnabled;
    copy.notifications                  = [self.notifications copy];
    copy.profileBackgroundTile          = self.profileBackgroundTile;
    copy.translatorType                 = [self.translatorType copy];
    copy.profileImageUrl                = [self.profileImageUrl copy];
    copy.descriptionField               = [self.descriptionField copy];
    copy.profileBannerUrl               = [self.profileBannerUrl copy];
    copy.profileLinkColor               = [self.profileLinkColor copy];
    copy.profileTextColor               = [self.profileTextColor copy];
    copy.followRequestSent              = [self.followRequestSent copy];
    copy.profileUseBackgroundImage      = self.profileUseBackgroundImage;
    copy.profileImageUrlHttps           = [self.profileImageUrlHttps copy];
    copy.profileBackgroundColor         = [self.profileBackgroundColor copy];
    copy.profileSidebarFillColor        = [self.profileSidebarFillColor copy];
    copy.profileBackgroundImageUrl      = [self.profileBackgroundImageUrl copy];
    copy.profileSidebarBorderColor      = [self.profileSidebarBorderColor copy];
    copy.profileBackgroundImageUrlHttps = [self.profileBackgroundImageUrlHttps copy];
    return copy;
}


@end
