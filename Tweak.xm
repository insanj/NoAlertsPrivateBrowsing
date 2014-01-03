#include <substrate.h>

@interface BrowserController
-(void)_finishTogglingPrivateBrowsing;
- (void)_togglePrivateBrowsingWithConfirmation:(_Bool)arg1;
- (void)_togglePrivateBrowsingFromBarButtonItem;
@end

%hook BrowserController
-(void)_togglePrivateBrowsingFromBarButtonItem{

	//Keep all tabs
	[self _finishTogglingPrivateBrowsing];

	//Closes all tabs
	//[self _togglePrivateBrowsingWithConfirmation:NO];
}
%end