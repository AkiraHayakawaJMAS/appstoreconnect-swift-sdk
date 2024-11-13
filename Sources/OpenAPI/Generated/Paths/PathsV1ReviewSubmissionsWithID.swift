// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.ReviewSubmissions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/reviewSubmissions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "reviewSubmissions_getInstance")
		}

		public struct GetParameters {
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?
			public var include: [Include]?
			public var limitItems: Int?

			public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
				case platform
				case submittedDate
				case state
				case app
				case items
				case appStoreVersionForReview
				case submittedByActor
				case lastUpdatedByActor
			}

			public enum FieldsReviewSubmissionItems: String, Codable, CaseIterable {
				case state
				case appStoreVersion
				case appCustomProductPageVersion
				case appStoreVersionExperiment
				case appStoreVersionExperimentV2
				case appEvent
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case items
				case appStoreVersionForReview
				case submittedByActor
				case lastUpdatedByActor
			}

			public init(fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, include: [Include]? = nil, limitItems: Int? = nil) {
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.fieldsReviewSubmissionItems = fieldsReviewSubmissionItems
				self.include = include
				self.limitItems = limitItems
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitItems, forKey: "limit[items]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.ReviewSubmissionUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionResponse> {
			Request(path: path, method: "PATCH", body: body, id: "reviewSubmissions_updateInstance")
		}
	}
}
