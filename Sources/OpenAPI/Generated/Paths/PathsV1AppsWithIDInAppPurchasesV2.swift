// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var inAppPurchasesV2: InAppPurchasesV2 {
		InAppPurchasesV2(path: path + "/inAppPurchasesV2")
	}

	public struct InAppPurchasesV2 {
		/// Path: `/v1/apps/{id}/inAppPurchasesV2`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasesV2Response> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps_inAppPurchasesV2_getToManyRelated")
		}

		public struct GetParameters {
			public var filterProductID: [String]?
			public var filterName: [String]?
			public var filterState: [FilterState]?
			public var filterInAppPurchaseType: [FilterInAppPurchaseType]?
			public var sort: [Sort]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?
			public var fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]?
			public var fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?
			public var fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]?
			public var fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages]?
			public var limit: Int?
			public var include: [Include]?
			public var limitInAppPurchaseLocalizations: Int?
			public var limitImages: Int?

			public enum FilterState: String, Codable, CaseIterable {
				case missingMetadata = "MISSING_METADATA"
				case waitingForUpload = "WAITING_FOR_UPLOAD"
				case processingContent = "PROCESSING_CONTENT"
				case readyToSubmit = "READY_TO_SUBMIT"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
				case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
				case approved = "APPROVED"
				case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
				case removedFromSale = "REMOVED_FROM_SALE"
				case rejected = "REJECTED"
			}

			public enum FilterInAppPurchaseType: String, Codable, CaseIterable {
				case consumable = "CONSUMABLE"
				case nonConsumable = "NON_CONSUMABLE"
				case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
			}

			public enum Sort: String, Codable, CaseIterable {
				case name
				case minusname = "-name"
				case inAppPurchaseType
				case minusinAppPurchaseType = "-inAppPurchaseType"
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case name
				case productID = "productId"
				case inAppPurchaseType
				case state
				case reviewNote
				case familySharable
				case contentHosting
				case inAppPurchaseLocalizations
				case pricePoints
				case content
				case appStoreReviewScreenshot
				case promotedPurchase
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case images
			}

			public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
				case name
				case locale
				case description
				case state
				case inAppPurchaseV2
			}

			public enum FieldsInAppPurchaseContents: String, Codable, CaseIterable {
				case fileName
				case fileSize
				case url
				case lastModifiedDate
				case inAppPurchaseV2
			}

			public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case imageAsset
				case assetToken
				case assetType
				case uploadOperations
				case assetDeliveryState
				case inAppPurchaseV2
			}

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case visibleForAllUsers
				case enabled
				case state
				case inAppPurchaseV2
				case subscription
				case promotionImages
			}

			public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable {
				case baseTerritory
				case manualPrices
				case automaticPrices
			}

			public enum FieldsInAppPurchaseAvailabilities: String, Codable, CaseIterable {
				case availableInNewTerritories
				case availableTerritories
			}

			public enum FieldsInAppPurchaseImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case assetToken
				case imageAsset
				case uploadOperations
				case state
				case inAppPurchase
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseLocalizations
				case content
				case appStoreReviewScreenshot
				case promotedPurchase
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case images
			}

			public init(filterProductID: [String]? = nil, filterName: [String]? = nil, filterState: [FilterState]? = nil, filterInAppPurchaseType: [FilterInAppPurchaseType]? = nil, sort: [Sort]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]? = nil, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]? = nil, fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages]? = nil, limit: Int? = nil, include: [Include]? = nil, limitInAppPurchaseLocalizations: Int? = nil, limitImages: Int? = nil) {
				self.filterProductID = filterProductID
				self.filterName = filterName
				self.filterState = filterState
				self.filterInAppPurchaseType = filterInAppPurchaseType
				self.sort = sort
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsInAppPurchaseLocalizations = fieldsInAppPurchaseLocalizations
				self.fieldsInAppPurchaseContents = fieldsInAppPurchaseContents
				self.fieldsInAppPurchaseAppStoreReviewScreenshots = fieldsInAppPurchaseAppStoreReviewScreenshots
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsInAppPurchasePriceSchedules = fieldsInAppPurchasePriceSchedules
				self.fieldsInAppPurchaseAvailabilities = fieldsInAppPurchaseAvailabilities
				self.fieldsInAppPurchaseImages = fieldsInAppPurchaseImages
				self.limit = limit
				self.include = include
				self.limitInAppPurchaseLocalizations = limitInAppPurchaseLocalizations
				self.limitImages = limitImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterProductID, forKey: "filter[productId]")
				encoder.encode(filterName, forKey: "filter[name]")
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(filterInAppPurchaseType, forKey: "filter[inAppPurchaseType]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
				encoder.encode(fieldsInAppPurchaseContents, forKey: "fields[inAppPurchaseContents]")
				encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
				encoder.encode(fieldsInAppPurchaseAvailabilities, forKey: "fields[inAppPurchaseAvailabilities]")
				encoder.encode(fieldsInAppPurchaseImages, forKey: "fields[inAppPurchaseImages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitInAppPurchaseLocalizations, forKey: "limit[inAppPurchaseLocalizations]")
				encoder.encode(limitImages, forKey: "limit[images]")
				return encoder.items
			}
		}
	}
}
