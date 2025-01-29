//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 23/01/25.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet private var view: UIRefreshControl?

    var delegate: FeedRefreshViewControllerDelegate?

    @IBAction @objc func refresh() {
        delegate?.didRequestFeedRefresh()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        viewModel.isLoading ? view?.beginRefreshing() : view?.endRefreshing()
    }
}
