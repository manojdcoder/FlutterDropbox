#import "MyDBClientsManager.h"

@implementation MyDBClientsManager

static NSString *accessToken = nil;

+ (void)setAccessToken:(NSString *)value {
    accessToken = value;
}

+ (DBUserClient *)authorizedClient {
    if (accessToken) {
        return [[DBUserClient alloc] initWithAccessToken:accessToken];
    } else {
        return [super authorizedClient];
    }
}

@end
