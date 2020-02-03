//
//  ReactNativeModalBridge.m
//  NativeModulesCommunication


#import "ReactNativeModalBridge.h"
#import "ReactNativeEvents.h"

@implementation ReactNativeModalBridge
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(closeModal) {
    [[NSNotificationCenter defaultCenter] postNotificationName:ReactEventCloseModal object:nil];
}

@end
