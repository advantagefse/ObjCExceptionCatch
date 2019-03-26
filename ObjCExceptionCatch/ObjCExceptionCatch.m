//
//  ObjCExceptionCatch.h
//  ObjCExceptionCatch
//
//  Copyright © 2018 Advantage FSE. All rights reserved.
//

#import "ObjCExceptionCatch.h"

@implementation ObjC

+ (BOOL)catchException:(void (^_Nonnull)(void))tryBlock error:(NSError **)error
{
    if (!tryBlock) {
        return YES;
    }

    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        if (error) {
            NSDictionary *exceptionUserInfo = exception.userInfo;
            NSMutableDictionary * userInfo = [exceptionUserInfo mutableCopy];
            userInfo[NSLocalizedDescriptionKey] = exception.reason;
            userInfo[NSUnderlyingErrorKey] = exception.name;
            *error = [[NSError alloc] initWithDomain:exception.name
                                                code:0
                                            userInfo:userInfo];
        }

        return NO;
    }
}

@end


