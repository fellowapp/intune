#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(IntunePlugin, "Intune",
           CAP_PLUGIN_METHOD(loginAndEnrollAccount, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(registerAndEnrollAccount, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(deRegisterAndUnenrollAccount, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(deRegisterAndUnenrollAccountId, CAPPluginReturnNone);

           CAP_PLUGIN_METHOD(openIntuneConsole, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(getEnrolledAccount, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(getEnrolledAccountId, CAPPluginReturnNone);
           CAP_PLUGIN_METHOD(getEnrolledAccountIds, CAPPluginReturnNone);
)
