// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchaseImages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/inAppPurchaseImages/{id}`
		public let path: String

		public func get(fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseImageResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchaseImages, include), id: "inAppPurchaseImages_getInstance")
		}

		private func makeGetQuery(_ fieldsInAppPurchaseImages: [FieldsInAppPurchaseImages]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsInAppPurchaseImages, forKey: "fields[inAppPurchaseImages]")
			encoder.encode(include, forKey: "include")
			return encoder.items
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
			case inAppPurchase
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.InAppPurchaseImageUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseImageResponse> {
			Request(path: path, method: "PATCH", body: body, id: "inAppPurchaseImages_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "inAppPurchaseImages_deleteInstance")
		}
	}
}
