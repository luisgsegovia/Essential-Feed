//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//


import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://example.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()

    private init() {}

    var requestedURL: URL?

}

class RemoteFeedLoaderTests: XCTestCase {
    func test_initDoesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestsDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader(client: client)

        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
}
