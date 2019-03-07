//
//  ObjCExceptionCatch.h
//  ObjCExceptionCatch
//
//  Created by Christos Chryssochoidis on 07/Mar/2019.
//  First version by Akis Vavouranakis on 23/Nov/2018.
//  Copyright © 2018 Advantage FSE. All rights reserved.
//

#import "ObjCExceptionCatch.h"

BOOL objcExceptionCatch(void (^_Nonnull tryBlock)(void), NSError **error)
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


