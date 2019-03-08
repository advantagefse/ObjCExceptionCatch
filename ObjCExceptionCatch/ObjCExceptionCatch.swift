//
//  ObjCExceptionCatch.swift
//  ObjCExceptionCatch
//
//  Created by Christos Chryssochoidis on 07/03/2019.
//  Copyright © 2019 Advantage FSE. All rights reserved.
//

import Foundation

/**
    - param block: Needs to be @escaping otherwise we won't be able to pass throwing closures.
 */
public func objcTry<T>(block: @escaping () throws -> T) throws -> T {
    var result: T?
    var error: Error?
    
    let objcBlock: () -> () = {
        do {
            result = try block()
        } catch let anError{
            error = anError
        }
    }
    
    do {
        try ObjC.catchException(objcBlock)
    } catch let anError {
        error = anError
    }
    
    if let _result = result {
        return _result
    } else if let _error = error {
        throw _error
    } else {
        throw NSError(domain: "ObjCExceptionCatch", code: 0, userInfo: nil)
    }
}
