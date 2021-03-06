//
//  TodayFeedDelegate.swift
//  NetNewsWire
//
//  Created by Brent Simmons on 11/19/17.
//  Copyright © 2017 Ranchero Software. All rights reserved.
//

import Foundation
import RSCore
import Articles
import Account

struct TodayFeedDelegate: SmartFeedDelegate {

	var feedID: FeedIdentifier? {
		return FeedIdentifier.smartFeed(String(describing: TodayFeedDelegate.self))
	}
	
	let nameForDisplay = NSLocalizedString("Today", comment: "Today pseudo-feed title")
	let fetchType = FetchType.today
	var smallIcon: IconImage? = AppAssets.todayFeedImage
	
	func fetchUnreadCount(for account: Account, callback: @escaping (Int) -> Void) {
		account.fetchUnreadCountForToday(callback)
	}
}

