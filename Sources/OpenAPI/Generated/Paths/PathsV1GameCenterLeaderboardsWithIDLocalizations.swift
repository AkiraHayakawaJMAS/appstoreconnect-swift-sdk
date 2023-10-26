// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboards.WithID {
	public var localizations: Localizations {
		Localizations(path: path + "/localizations")
	}

	public struct Localizations {
		/// Path: `/v1/gameCenterLeaderboards/{id}/localizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?
			public var fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardLocalizations: String, Codable, CaseIterable {
				case formatterOverride
				case formatterSuffix
				case formatterSuffixSingular
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
				case locale
				case name
			}

			public enum FieldsGameCenterLeaderboardImages: String, Codable, CaseIterable {
				case assetDeliveryState
				case fileName
				case fileSize
				case gameCenterLeaderboardLocalization
				case imageAsset
				case uploadOperations
				case uploaded
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case archived
				case defaultFormatter
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case groupLeaderboard
				case localizations
				case recurrenceDuration
				case recurrenceRule
				case recurrenceStartDate
				case referenceName
				case releases
				case scoreRangeEnd
				case scoreRangeStart
				case scoreSortType
				case submissionType
				case vendorIdentifier
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public init(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterLeaderboardLocalizations = fieldsGameCenterLeaderboardLocalizations
				self.fieldsGameCenterLeaderboardImages = fieldsGameCenterLeaderboardImages
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
				encoder.encode(fieldsGameCenterLeaderboardImages, forKey: "fields[gameCenterLeaderboardImages]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}