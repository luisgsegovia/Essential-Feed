//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//


import XCTest

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?

}

class RemoteFeedLoaderTests: XCTestCase {
    func test_initDoesNotRequestDataFromURL() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }
}
