// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAchievements {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterAchievements/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?
			public var include: [Include]?
			public var fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?
			public var fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]?
			public var limitLocalizations: Int?
			public var limitReleases: Int?

			public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case points
				case referenceName
				case releases
				case repeatable
				case showBeforeEarned
				case vendorIdentifier
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case releases
			}

			public enum FieldsGameCenterAchievementReleases: String, Codable, CaseIterable {
				case gameCenterAchievement
				case gameCenterDetail
				case live
			}

			public enum FieldsGameCenterAchievementLocalizations: String, Codable, CaseIterable {
				case afterEarnedDescription
				case beforeEarnedDescription
				case gameCenterAchievement
				case gameCenterAchievementImage
				case locale
				case name
			}

			public init(fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, include: [Include]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]? = nil, limitLocalizations: Int? = nil, limitReleases: Int? = nil) {
				self.fieldsGameCenterAchievements = fieldsGameCenterAchievements
				self.include = include
				self.fieldsGameCenterAchievementReleases = fieldsGameCenterAchievementReleases
				self.fieldsGameCenterAchievementLocalizations = fieldsGameCenterAchievementLocalizations
				self.limitLocalizations = limitLocalizations
				self.limitReleases = limitReleases
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
				encoder.encode(fieldsGameCenterAchievementLocalizations, forKey: "fields[gameCenterAchievementLocalizations]")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				encoder.encode(limitReleases, forKey: "limit[releases]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterAchievementUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}