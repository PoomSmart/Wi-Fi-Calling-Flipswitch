#import <substrate.h>

@interface CSDXPCClient : NSObject
@property(retain, nonatomic) NSString *processBundleIdentifier;
@end

%hook CSDXPCClient

- (BOOL)isEntitledForCapability:(NSString *)capability
{
	BOOL fromSpringBoard = [self.processBundleIdentifier isEqualToString:@"com.apple.springboard"];
	BOOL callCapability = [capability isEqualToString:@"modify-call-capabilities"];
	callCapability |= [capability isEqualToString:@"access-call-capabilities"];
	callCapability |= [capability isEqualToString:@"access-calls"];
	return callCapability && fromSpringBoard ? YES : %orig;
}

%end