// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaGroups.WithID {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/betaGroups/{id}/app`
		public let path: String

		public func get(fieldsApps: [FieldsApps]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsApps), id: "betaGroups_app_getToOneRelated")
		}

		private func makeGetQuery(_ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
			return encoder.items
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
	}
}
