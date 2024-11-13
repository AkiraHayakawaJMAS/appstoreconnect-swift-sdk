// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEncryptionDeclarations: AppEncryptionDeclarations {
		AppEncryptionDeclarations(path: path + "/appEncryptionDeclarations")
	}

	public struct AppEncryptionDeclarations {
		/// Path: `/v1/appEncryptionDeclarations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appEncryptionDeclarations_getCollection")
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterApp: [String]?
			public var filterBuilds: [String]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]?
			public var limit: Int?
			public var include: [Include]?
			public var limitBuilds: Int?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
				case visionOs = "VISION_OS"
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case appDescription
				case createdDate
				case usesEncryption
				case exempt
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case availableOnFrenchStore
				case platform
				case uploadedDate
				case documentURL = "documentUrl"
				case documentName
				case documentType
				case appEncryptionDeclarationState
				case codeValue
				case app
				case builds
				case appEncryptionDeclarationDocument
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

			public enum FieldsAppEncryptionDeclarationDocuments: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case assetToken
				case downloadURL = "downloadUrl"
				case sourceFileChecksum
				case uploadOperations
				case assetDeliveryState
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case builds
				case appEncryptionDeclarationDocument
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]? = nil, limit: Int? = nil, include: [Include]? = nil, limitBuilds: Int? = nil) {
				self.filterPlatform = filterPlatform
				self.filterApp = filterApp
				self.filterBuilds = filterBuilds
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.fieldsApps = fieldsApps
				self.fieldsAppEncryptionDeclarationDocuments = fieldsAppEncryptionDeclarationDocuments
				self.limit = limit
				self.include = include
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAppEncryptionDeclarationDocuments, forKey: "fields[appEncryptionDeclarationDocuments]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEncryptionDeclarationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationResponse> {
			Request(path: path, method: "POST", body: body, id: "appEncryptionDeclarations_createInstance")
		}
	}
}
