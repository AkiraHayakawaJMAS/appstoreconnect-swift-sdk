// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterGroups.WithID {
	public var gameCenterDetails: GameCenterDetails {
		GameCenterDetails(path: path + "/gameCenterDetails")
	}

	public struct GameCenterDetails {
		/// Path: `/v1/gameCenterGroups/{id}/gameCenterDetails`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterDetailsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterGroups_gameCenterDetails_getToManyRelated")
		}

		public struct GetParameters {
			public var filterGameCenterAppVersionsEnabled: [String]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?
			public var fieldsGameCenterGroups: [FieldsGameCenterGroups]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?
			public var fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?
			public var fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?
			public var fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]?
			public var limit: Int?
			public var include: [Include]?
			public var limitGameCenterAppVersions: Int?
			public var limitGameCenterLeaderboards: Int?
			public var limitGameCenterLeaderboardSets: Int?
			public var limitGameCenterAchievements: Int?
			public var limitAchievementReleases: Int?
			public var limitLeaderboardReleases: Int?
			public var limitLeaderboardSetReleases: Int?

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case arcadeEnabled
				case challengeEnabled
				case app
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
				case defaultLeaderboard
				case defaultGroupLeaderboard
				case achievementReleases
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case name
				case bundleID = "bundleId"
				case sku
				case primaryLocale
				case isOrEverWasMadeForKids
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
				case contentRightsDeclaration
				case streamlinedPurchasingEnabled
				case appEncryptionDeclarations
				case ciProduct
				case betaTesters
				case betaGroups
				case appStoreVersions
				case preReleaseVersions
				case betaAppLocalizations
				case builds
				case betaLicenseAgreement
				case betaAppReviewDetail
				case appInfos
				case appClips
				case appPricePoints
				case endUserLicenseAgreement
				case appPriceSchedule
				case appAvailabilityV2
				case inAppPurchases
				case subscriptionGroups
				case gameCenterEnabledVersions
				case perfPowerMetrics
				case appCustomProductPages
				case inAppPurchasesV2
				case promotedPurchases
				case appEvents
				case reviewSubmissions
				case subscriptionGracePeriod
				case customerReviews
				case gameCenterDetail
				case appStoreVersionExperimentsV2
				case alternativeDistributionKey
				case analyticsReportRequests
				case marketplaceSearchDetail
			}

			public enum FieldsGameCenterAppVersions: String, Codable, CaseIterable {
				case enabled
				case compatibilityVersions
				case appStoreVersion
			}

			public enum FieldsGameCenterGroups: String, Codable, CaseIterable {
				case referenceName
				case gameCenterDetails
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case defaultFormatter
				case referenceName
				case vendorIdentifier
				case submissionType
				case scoreSortType
				case scoreRangeStart
				case scoreRangeEnd
				case recurrenceStartDate
				case recurrenceDuration
				case recurrenceRule
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboard
				case gameCenterLeaderboardSets
				case localizations
				case releases
			}

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case referenceName
				case vendorIdentifier
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboardSet
				case localizations
				case gameCenterLeaderboards
				case releases
			}

			public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
				case referenceName
				case vendorIdentifier
				case points
				case showBeforeEarned
				case repeatable
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case releases
			}

			public enum FieldsGameCenterAchievementReleases: String, Codable, CaseIterable {
				case live
				case gameCenterDetail
				case gameCenterAchievement
			}

			public enum FieldsGameCenterLeaderboardReleases: String, Codable, CaseIterable {
				case live
				case gameCenterDetail
				case gameCenterLeaderboard
			}

			public enum FieldsGameCenterLeaderboardSetReleases: String, Codable, CaseIterable {
				case live
				case gameCenterDetail
				case gameCenterLeaderboardSet
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
				case defaultLeaderboard
				case defaultGroupLeaderboard
				case achievementReleases
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public init(filterGameCenterAppVersionsEnabled: [String]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, fieldsGameCenterLeaderboardSetReleases: [FieldsGameCenterLeaderboardSetReleases]? = nil, limit: Int? = nil, include: [Include]? = nil, limitGameCenterAppVersions: Int? = nil, limitGameCenterLeaderboards: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterAchievements: Int? = nil, limitAchievementReleases: Int? = nil, limitLeaderboardReleases: Int? = nil, limitLeaderboardSetReleases: Int? = nil) {
				self.filterGameCenterAppVersionsEnabled = filterGameCenterAppVersionsEnabled
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsApps = fieldsApps
				self.fieldsGameCenterAppVersions = fieldsGameCenterAppVersions
				self.fieldsGameCenterGroups = fieldsGameCenterGroups
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterAchievements = fieldsGameCenterAchievements
				self.fieldsGameCenterAchievementReleases = fieldsGameCenterAchievementReleases
				self.fieldsGameCenterLeaderboardReleases = fieldsGameCenterLeaderboardReleases
				self.fieldsGameCenterLeaderboardSetReleases = fieldsGameCenterLeaderboardSetReleases
				self.limit = limit
				self.include = include
				self.limitGameCenterAppVersions = limitGameCenterAppVersions
				self.limitGameCenterLeaderboards = limitGameCenterLeaderboards
				self.limitGameCenterLeaderboardSets = limitGameCenterLeaderboardSets
				self.limitGameCenterAchievements = limitGameCenterAchievements
				self.limitAchievementReleases = limitAchievementReleases
				self.limitLeaderboardReleases = limitLeaderboardReleases
				self.limitLeaderboardSetReleases = limitLeaderboardSetReleases
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterGameCenterAppVersionsEnabled, forKey: "filter[gameCenterAppVersions.enabled]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
				encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
				encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
				encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
				encoder.encode(fieldsGameCenterLeaderboardSetReleases, forKey: "fields[gameCenterLeaderboardSetReleases]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitGameCenterAppVersions, forKey: "limit[gameCenterAppVersions]")
				encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
				encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
				encoder.encode(limitGameCenterAchievements, forKey: "limit[gameCenterAchievements]")
				encoder.encode(limitAchievementReleases, forKey: "limit[achievementReleases]")
				encoder.encode(limitLeaderboardReleases, forKey: "limit[leaderboardReleases]")
				encoder.encode(limitLeaderboardSetReleases, forKey: "limit[leaderboardSetReleases]")
				return encoder.items
			}
		}
	}
}
