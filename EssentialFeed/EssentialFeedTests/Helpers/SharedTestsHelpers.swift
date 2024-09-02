//
//  SharedTestsHelpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 01/09/24.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
