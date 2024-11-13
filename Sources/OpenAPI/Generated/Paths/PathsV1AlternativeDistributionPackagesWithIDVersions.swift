// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AlternativeDistributionPackages.WithID {
	public var versions: Versions {
		Versions(path: path + "/versions")
	}

	public struct Versions {
		/// Path: `/v1/alternativeDistributionPackages/{id}/versions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "alternativeDistributionPackages_versions_getToManyRelated")
		}

		public struct GetParameters {
			public var filterState: [FilterState]?
			public var fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]?
			public var fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]?
			public var fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]?
			public var fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages]?
			public var limit: Int?
			public var include: [Include]?
			public var limitVariants: Int?
			public var limitDeltas: Int?

			public enum FilterState: String, Codable, CaseIterable {
				case completed = "COMPLETED"
				case replaced = "REPLACED"
			}

			public enum FieldsAlternativeDistributionPackageVersions: String, Codable, CaseIterable {
				case url
				case urlExpirationDate
				case version
				case fileChecksum
				case state
				case variants
				case deltas
				case alternativeDistributionPackage
			}

			public enum FieldsAlternativeDistributionPackageVariants: String, Codable, CaseIterable {
				case url
				case urlExpirationDate
				case alternativeDistributionKeyBlob
				case fileChecksum
			}

			public enum FieldsAlternativeDistributionPackageDeltas: String, Codable, CaseIterable {
				case url
				case urlExpirationDate
				case alternativeDistributionKeyBlob
				case fileChecksum
			}

			public enum FieldsAlternativeDistributionPackages: String, Codable, CaseIterable {
				case versions
			}

			public enum Include: String, Codable, CaseIterable {
				case variants
				case deltas
				case alternativeDistributionPackage
			}

			public init(filterState: [FilterState]? = nil, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]? = nil, fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]? = nil, fieldsAlternativeDistributionPackageDeltas: [FieldsAlternativeDistributionPackageDeltas]? = nil, fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages]? = nil, limit: Int? = nil, include: [Include]? = nil, limitVariants: Int? = nil, limitDeltas: Int? = nil) {
				self.filterState = filterState
				self.fieldsAlternativeDistributionPackageVersions = fieldsAlternativeDistributionPackageVersions
				self.fieldsAlternativeDistributionPackageVariants = fieldsAlternativeDistributionPackageVariants
				self.fieldsAlternativeDistributionPackageDeltas = fieldsAlternativeDistributionPackageDeltas
				self.fieldsAlternativeDistributionPackages = fieldsAlternativeDistributionPackages
				self.limit = limit
				self.include = include
				self.limitVariants = limitVariants
				self.limitDeltas = limitDeltas
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsAlternativeDistributionPackageVersions, forKey: "fields[alternativeDistributionPackageVersions]")
				encoder.encode(fieldsAlternativeDistributionPackageVariants, forKey: "fields[alternativeDistributionPackageVariants]")
				encoder.encode(fieldsAlternativeDistributionPackageDeltas, forKey: "fields[alternativeDistributionPackageDeltas]")
				encoder.encode(fieldsAlternativeDistributionPackages, forKey: "fields[alternativeDistributionPackages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitVariants, forKey: "limit[variants]")
				encoder.encode(limitDeltas, forKey: "limit[deltas]")
				return encoder.items
			}
		}
	}
}
