//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 22/08/24.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
