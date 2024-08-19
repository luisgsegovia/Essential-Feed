//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//


import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL

    init(client: HTTPClient, url: URL) {
        self.client = client
        self.url = url
    }

    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?

    func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteFeedLoaderTests: XCTestCase {
    func test_initDoesNotRequestDataFromURL() {
        let url = URL(string: "https://example.com")!
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(client: client, URL: url)

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestsDataFromURL() {
        let url = URL(string: "https://example.com")!
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(client: client, URL: url)


        sut.load()

        XCTAssertEqual(client.requestedURL, url)
    }
}
