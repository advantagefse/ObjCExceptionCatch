//
//  ObjCExceptionCatch.h
//  ObjCExceptionCatch
//
//  Copyright © 2018 Advantage FSE. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for ObjCExceptionCatch.
FOUNDATION_EXPORT double ObjCExceptionCatchVersionNumber;

//! Project version string for ObjCExceptionCatch
FOUNDATION_EXPORT const unsigned char ObjCExceptionCatchVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <ObjCExceptionCatch/PublicHeader.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjC: NSObject

/**
 *
 *  As we know, we can't catch Obj-C exceptions in Swift. If such an exception is thrown within
 *  Swift code, the program will crash. So the following function help us to convert NSExceptions
 *  to Swift errors in order to not crash.
 *
 *  @param tryBlock block of code that might throw an NSException.
 *  @param error Out parameter that will contain the error to which we converted any NSException.
 *  @return No, if given block throws an NSException and Yes, if it doesn't.
 */
+ (BOOL)catchException:(void (NS_NOESCAPE ^)(void))tryBlock error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END