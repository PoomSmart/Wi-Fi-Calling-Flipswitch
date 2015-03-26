#import "FSSwitchDataSource.h"
#import "FSSwitchPanel.h"

@interface WiFiCallingSwitch : NSObject <FSSwitchDataSource>
@end

@interface TUCallCapabilities : NSObject
+ (BOOL)isWiFiCallingEnabled;
+ (void)setWiFiCallingEnabled:(BOOL)enabled;
@end

@implementation WiFiCallingSwitch

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier
{
	return [TUCallCapabilities isWiFiCallingEnabled] ? FSSwitchStateOn : FSSwitchStateOff;
}

- (void)applyState:(FSSwitchState)newState forSwitchIdentifier:(NSString *)switchIdentifier
{
	if (newState == FSSwitchStateIndeterminate)
		return;
	[TUCallCapabilities setWiFiCallingEnabled:newState == FSSwitchStateOn];
}

@end
