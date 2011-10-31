/**
 * Google Analytics Implementation
 * @constructor
 */
function GAnalytics() {
}

/**
 * Use to track a page View
 */
GAnalytics.prototype.trackPage = function(name) {
    PhoneGap.exec("GAnalytics.trackPage", name);
};

/**
 * Use to track an Event
 */
GAnalytics.prototype.trackEvent = function(category, action, opt_label, opt_value) {
    PhoneGap.exec("GAnalytics.trackEvent", category, action, opt_label, opt_value);
};

/**
 * Register the plugin with PhoneGap
 */
GAnalytics.install = function()
{
	if (!window.plugins) {
		window.plugins = {};
	}
	if (!window.plugins.GA) {
		window.plugins.GA = new GAnalytics();
	}
}
PhoneGap.addConstructor(GAnalytics.install);
