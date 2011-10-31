//
//  GAnalytics.m
//

#import "GAnalytics.h"
#import "GANTracker.h"

// Dispatch period in seconds
static const NSInteger kGANDispatchPeriodSec = 10;

@implementation GAnalytics

-(id)initWithWebView:(UIWebView *)theWebView
{
	[[GANTracker sharedTracker] startTrackerWithAccountID:@"UA-XXXXXXXX-X"
										   dispatchPeriod:kGANDispatchPeriodSec
												 delegate:nil];

	return self;
}

- (void)trackPage:(NSMutableArray*)args
		 withDict:(NSMutableDictionary*)options
{
	// URL must start with /
	// also special characters must be URL encoded
	NSError *error;
	if (![[GANTracker sharedTracker] trackPageview:[args objectAtIndex:0]
										 withError:&error]) {
		// Handle error here
	}

}

- (void)trackEvent:(NSMutableArray*)args
		  withDict:(NSMutableDictionary*)options
{
	NSError *error;
	if (![[GANTracker sharedTracker] trackEvent:[args objectAtIndex:0]
										 action:[args objectAtIndex:1]
										  label:[args objectAtIndex:2]
										  value:(NSUInteger)[args objectAtIndex:3]
									  withError:&error]) {
		// Handle error here
	}

}
@end