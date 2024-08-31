//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 31/08/24.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
