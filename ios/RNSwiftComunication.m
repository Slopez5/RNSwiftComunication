#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(GenericBridgeModule, RCTEventEmitter)

RCT_EXTERN_METHOD(sendEventToReact:(NSString *)eventName data:(id)data)

RCT_EXTERN_METHOD(receiveDataFromReact:(NSDictionary *)data
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter)

@end
