//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}


public class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL

    public init(client: HTTPClient, url: URL) {
        self.client = client
        self.url = url
    }

    public func load() {
        client.get(from: url)
    }
}
