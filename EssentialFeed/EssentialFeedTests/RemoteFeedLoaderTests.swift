//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//


import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.get(from: URL(string: "https://example.com"))
    }
}

class HTTPClient {
    static var shared = HTTPClient()

    func get(from url: URL) {}
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?

    override func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteFeedLoaderTests: XCTestCase {
    func test_initDoesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestsDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader(client: client)

        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
}
