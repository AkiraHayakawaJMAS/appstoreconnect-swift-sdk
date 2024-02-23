// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.MarketplaceSearchDetails {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/marketplaceSearchDetails/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.MarketplaceSearchDetailUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.MarketplaceSearchDetailResponse> {
			Request(path: path, method: "PATCH", body: body, id: "marketplaceSearchDetails-update_instance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "marketplaceSearchDetails-delete_instance")
		}
	}
}
