/*
* Notes: The @objc shows that this class & function should be exposed to Cordova.
*/
@objc(SwiftVendorId) class YourPluginName : CDVPlugin {
  @objc(GetVendorId:) // Declare your function name.
  func GetVendorId(command: CDVInvokedUrlCommand) { // write the function code.
    /* 
     * Always assume that the plugin will fail.
     * Even if in this example, it can't.
     */
    // Set the plugin result to fail.
    var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "uh la la! Error fetching Vendor Id...001");
    // Set the plugin result to succeed.
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Cheers to the freakin weekend.");
    // Send the function result back to Cordova.
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
}