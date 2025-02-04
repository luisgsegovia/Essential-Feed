//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 03/02/25.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
