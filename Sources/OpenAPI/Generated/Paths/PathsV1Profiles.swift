// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var profiles: Profiles {
		Profiles(path: path + "/profiles")
	}

	public struct Profiles {
		/// Path: `/v1/profiles`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ProfilesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "profiles_getCollection")
		}

		public struct GetParameters {
			public var filterName: [String]?
			public var filterProfileType: [FilterProfileType]?
			public var filterProfileState: [FilterProfileState]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsProfiles: [FieldsProfiles]?
			public var fieldsBundleIDs: [FieldsBundleIDs]?
			public var fieldsDevices: [FieldsDevices]?
			public var fieldsCertificates: [FieldsCertificates]?
			public var limit: Int?
			public var include: [Include]?
			public var limitCertificates: Int?
			public var limitDevices: Int?

			public enum FilterProfileType: String, Codable, CaseIterable {
				case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
				case iosAppStore = "IOS_APP_STORE"
				case iosAppAdhoc = "IOS_APP_ADHOC"
				case iosAppInhouse = "IOS_APP_INHOUSE"
				case macAppDevelopment = "MAC_APP_DEVELOPMENT"
				case macAppStore = "MAC_APP_STORE"
				case macAppDirect = "MAC_APP_DIRECT"
				case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
				case tvosAppStore = "TVOS_APP_STORE"
				case tvosAppAdhoc = "TVOS_APP_ADHOC"
				case tvosAppInhouse = "TVOS_APP_INHOUSE"
				case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
				case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
				case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
			}

			public enum FilterProfileState: String, Codable, CaseIterable {
				case active = "ACTIVE"
				case invalid = "INVALID"
			}

			public enum Sort: String, Codable, CaseIterable {
				case name
				case minusname = "-name"
				case profileType
				case minusprofileType = "-profileType"
				case profileState
				case minusprofileState = "-profileState"
				case id
				case minusid = "-id"
			}

			public enum FieldsProfiles: String, Codable, CaseIterable {
				case name
				case platform
				case profileType
				case profileState
				case profileContent
				case uuid
				case createdDate
				case expirationDate
				case bundleID = "bundleId"
				case devices
				case certificates
			}

			public enum FieldsBundleIDs: String, Codable, CaseIterable {
				case name
				case platform
				case identifier
				case seedID = "seedId"
				case profiles
				case bundleIDCapabilities = "bundleIdCapabilities"
				case app
			}

			public enum FieldsDevices: String, Codable, CaseIterable {
				case name
				case platform
				case udid
				case deviceClass
				case status
				case model
				case addedDate
			}

			public enum FieldsCertificates: String, Codable, CaseIterable {
				case name
				case certificateType
				case displayName
				case serialNumber
				case platform
				case expirationDate
				case certificateContent
			}

			public enum Include: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case devices
				case certificates
			}

			public init(filterName: [String]? = nil, filterProfileType: [FilterProfileType]? = nil, filterProfileState: [FilterProfileState]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, fieldsDevices: [FieldsDevices]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, limit: Int? = nil, include: [Include]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) {
				self.filterName = filterName
				self.filterProfileType = filterProfileType
				self.filterProfileState = filterProfileState
				self.filterID = filterID
				self.sort = sort
				self.fieldsProfiles = fieldsProfiles
				self.fieldsBundleIDs = fieldsBundleIDs
				self.fieldsDevices = fieldsDevices
				self.fieldsCertificates = fieldsCertificates
				self.limit = limit
				self.include = include
				self.limitCertificates = limitCertificates
				self.limitDevices = limitDevices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterName, forKey: "filter[name]")
				encoder.encode(filterProfileType, forKey: "filter[profileType]")
				encoder.encode(filterProfileState, forKey: "filter[profileState]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
				encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
				encoder.encode(fieldsDevices, forKey: "fields[devices]")
				encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitCertificates, forKey: "limit[certificates]")
				encoder.encode(limitDevices, forKey: "limit[devices]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.ProfileCreateRequest) -> Request<AppStoreConnect_Swift_SDK.ProfileResponse> {
			Request(path: path, method: "POST", body: body, id: "profiles_createInstance")
		}
	}
}
