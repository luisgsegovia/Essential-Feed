//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 18/08/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}


public class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL

    public init(client: HTTPClient, url: URL) {
        self.client = client
        self.url = url
    }

    public enum Error: Swift.Error {
        case connectivity
    }

    public func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
}
