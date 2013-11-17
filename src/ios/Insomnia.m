#import "Insomnia.h"
#import <Cordova/CDV.h>

@implementation Insomnia

- (void) keepAwake:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
  CDVPluginResult* result = nil;
  NSString* jsString = nil;
  NSString* callbackId = [arguments objectAtIndex:0];

  // Acquire a reference to the local UIApplication singleton
  UIApplication* app = [UIApplication sharedApplication];

  if (![app isIdleTimerDisabled]) {
    [app setIdleTimerDisabled:true];
  }
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  jsString = [result toSuccessCallbackString:callbackId];

  [self writeJavascript:jsString];
}

- (void) allowSleepAgain:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options {
  CDVPluginResult* result = nil;
  NSString* jsString = nil;
  NSString* callbackId = [arguments objectAtIndex:0];

  // Acquire a reference to the local UIApplication singleton
  UIApplication* app = [UIApplication sharedApplication];

  if([app isIdleTimerDisabled]) {
    [app setIdleTimerDisabled:false];
  }
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
  jsString = [result toSuccessCallbackString:callbackId];

  [self writeJavascript:jsString];
}

@end