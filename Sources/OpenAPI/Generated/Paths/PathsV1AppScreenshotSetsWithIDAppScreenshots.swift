// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppScreenshotSets.WithID {
	public var appScreenshots: AppScreenshots {
		AppScreenshots(path: path + "/appScreenshots")
	}

	public struct AppScreenshots {
		/// Path: `/v1/appScreenshotSets/{id}/appScreenshots`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appScreenshotSets_appScreenshots_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsAppScreenshots: [FieldsAppScreenshots]?
			public var fieldsAppScreenshotSets: [FieldsAppScreenshotSets]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppScreenshots: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case imageAsset
				case assetToken
				case assetType
				case uploadOperations
				case assetDeliveryState
				case appScreenshotSet
			}

			public enum FieldsAppScreenshotSets: String, Codable, CaseIterable {
				case screenshotDisplayType
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appScreenshots
			}

			public enum Include: String, Codable, CaseIterable {
				case appScreenshotSet
			}

			public init(fieldsAppScreenshots: [FieldsAppScreenshots]? = nil, fieldsAppScreenshotSets: [FieldsAppScreenshotSets]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppScreenshots = fieldsAppScreenshots
				self.fieldsAppScreenshotSets = fieldsAppScreenshotSets
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppScreenshots, forKey: "fields[appScreenshots]")
				encoder.encode(fieldsAppScreenshotSets, forKey: "fields[appScreenshotSets]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
