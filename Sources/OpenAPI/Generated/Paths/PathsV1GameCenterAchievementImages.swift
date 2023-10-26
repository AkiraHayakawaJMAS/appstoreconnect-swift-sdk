// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterAchievementImages: GameCenterAchievementImages {
		GameCenterAchievementImages(path: path + "/gameCenterAchievementImages")
	}

	public struct GameCenterAchievementImages {
		/// Path: `/v1/gameCenterAchievementImages`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterAchievementImageCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementImageResponse> {
			.post(path, body: body)
		}
	}
}