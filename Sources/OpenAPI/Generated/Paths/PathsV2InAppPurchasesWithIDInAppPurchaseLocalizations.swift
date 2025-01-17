// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID {
	public var inAppPurchaseLocalizations: InAppPurchaseLocalizations {
		InAppPurchaseLocalizations(path: path + "/inAppPurchaseLocalizations")
	}

	public struct InAppPurchaseLocalizations {
		/// Path: `/v2/inAppPurchases/{id}/inAppPurchaseLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "inAppPurchasesV2_inAppPurchaseLocalizations_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
				case name
				case locale
				case description
				case state
				case inAppPurchaseV2
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

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseV2
			}

			public init(fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsInAppPurchaseLocalizations = fieldsInAppPurchaseLocalizations
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
