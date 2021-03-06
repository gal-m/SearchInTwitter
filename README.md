# SearchInTwitter

[![CI Status](http://img.shields.io/travis/Gal/SearchInTwitter.svg?style=flat)](https://travis-ci.org/Gal/SearchInTwitter)
[![Version](https://img.shields.io/cocoapods/v/SearchInTwitter.svg?style=flat)](http://cocoapods.org/pods/SearchInTwitter)
[![License](https://img.shields.io/cocoapods/l/SearchInTwitter.svg?style=flat)](http://cocoapods.org/pods/SearchInTwitter)
[![Platform](https://img.shields.io/cocoapods/p/SearchInTwitter.svg?style=flat)](http://cocoapods.org/pods/SearchInTwitter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SearchInTwitter is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SearchInTwitter"
```

### Code Snippets



##### App Only Authentication
Objective-C :
```Objective-C

NSString *key = @"API Key";
NSString *secret =  @"API Secret";
    
    [[SearchInTwitter sharedInstance] getOAuthTokenWithConsumerKey:key consumerSecret:secret withCallback:^(AuthTokenResult *result, NSError *error) {
        
        if (result.accessToken) {
            [[SearchInTwitter sharedInstance] setAccessToken:result.accessToken];
        }
    }];
    
```
swift :
```swift
  let key = "API Key"
        let secret =  "API Secret"
        
        SearchInTwitter.sharedInstance().getOAuthToken(withConsumerKey: key, consumerSecret: secret, withCallback: { (AuthTokenResult, Error) in
            
            guard Error == nil else {
                return
            }
            if ((AuthTokenResult?.accessToken) != nil) {
                SearchInTwitter.sharedInstance().accessToken = AuthTokenResult?.accessToken
            }
        })
```


##### Search statuses
Objective-C :
```Objective-C
[[SearchInTwitter sharedInstance] searchTwitterFor:_searchTF.text withCallback:^(SearchTwitterResult *result, NSError *error) {
        

    }];
```    

swift :
```swift
   SearchInTwitter.sharedInstance().search(for: self.searchTF.text, withCallback: { (SearchTwitterResult, Error) in
      
        })
```   


## Author

Gal, g2a2l2@gmail.com

## License

SearchInTwitter is available under the MIT license. See the LICENSE file for more info.
