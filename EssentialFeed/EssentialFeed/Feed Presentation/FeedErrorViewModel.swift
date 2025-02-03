//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 02/02/25.
//

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
