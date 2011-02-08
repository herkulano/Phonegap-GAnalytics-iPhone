//
//  GAnalytics.h
//

#import <Foundation/Foundation.h>

#import "PhoneGapCommand.h"
@interface GAnalytics : PhoneGapCommand {
	
}

- (id)initWithWebView:(UIWebView *)theWebView;

- (void)trackPage:(NSMutableArray*)args 
		 withDict:(NSMutableDictionary*)options;

- (void)trackEvent:(NSMutableArray*)args 
		  withDict:(NSMutableDictionary*)options;

@end
