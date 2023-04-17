// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionOfferCodes {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionOfferCodes/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]?
			public var include: [Include]?
			public var fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]?
			public var fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]?
			public var fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]?
			public var limitCustomCodes: Int?
			public var limitOneTimeUseCodes: Int?
			public var limitPrices: Int?

			public enum FieldsSubscriptionOfferCodes: String, Codable, CaseIterable {
				case active
				case customCodes
				case customerEligibilities
				case duration
				case name
				case numberOfPeriods
				case offerEligibility
				case offerMode
				case oneTimeUseCodes
				case prices
				case subscription
				case totalNumberOfCodes
			}

			public enum Include: String, Codable, CaseIterable {
				case customCodes
				case oneTimeUseCodes
				case prices
				case subscription
			}

			public enum FieldsSubscriptionOfferCodeCustomCodes: String, Codable, CaseIterable {
				case active
				case createdDate
				case customCode
				case expirationDate
				case numberOfCodes
				case offerCode
			}

			public enum FieldsSubscriptionOfferCodeOneTimeUseCodes: String, Codable, CaseIterable {
				case active
				case createdDate
				case expirationDate
				case numberOfCodes
				case offerCode
				case values
			}

			public enum FieldsSubscriptionOfferCodePrices: String, Codable, CaseIterable {
				case subscriptionPricePoint
				case territory
			}

			public init(fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]? = nil, include: [Include]? = nil, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]? = nil, limitCustomCodes: Int? = nil, limitOneTimeUseCodes: Int? = nil, limitPrices: Int? = nil) {
				self.fieldsSubscriptionOfferCodes = fieldsSubscriptionOfferCodes
				self.include = include
				self.fieldsSubscriptionOfferCodeCustomCodes = fieldsSubscriptionOfferCodeCustomCodes
				self.fieldsSubscriptionOfferCodeOneTimeUseCodes = fieldsSubscriptionOfferCodeOneTimeUseCodes
				self.fieldsSubscriptionOfferCodePrices = fieldsSubscriptionOfferCodePrices
				self.limitCustomCodes = limitCustomCodes
				self.limitOneTimeUseCodes = limitOneTimeUseCodes
				self.limitPrices = limitPrices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionOfferCodes, forKey: "fields[subscriptionOfferCodes]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsSubscriptionOfferCodeCustomCodes, forKey: "fields[subscriptionOfferCodeCustomCodes]")
				encoder.encode(fieldsSubscriptionOfferCodeOneTimeUseCodes, forKey: "fields[subscriptionOfferCodeOneTimeUseCodes]")
				encoder.encode(fieldsSubscriptionOfferCodePrices, forKey: "fields[subscriptionOfferCodePrices]")
				encoder.encode(limitCustomCodes, forKey: "limit[customCodes]")
				encoder.encode(limitOneTimeUseCodes, forKey: "limit[oneTimeUseCodes]")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionOfferCodeUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeResponse> {
			.patch(path, body: body)
		}
	}
}