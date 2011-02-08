/**
 * Analytics Functions
 */
function trackView(url) {
  if(window.plugins) {
		window.plugins.GA.trackPage('/' + url);
  }
}

function trackEvent(category, action, opt_label, opt_value) {
  if(window.plugins) {
		window.plugins.GA.trackEvent(category, action, opt_label, opt_value);
  }
}