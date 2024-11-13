// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPageLocalizations.WithID {
	public var appPreviewSets: AppPreviewSets {
		AppPreviewSets(path: path + "/appPreviewSets")
	}

	public struct AppPreviewSets {
		/// Path: `/v1/appCustomProductPageLocalizations/{id}/appPreviewSets`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPreviewSetsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appCustomProductPageLocalizations_appPreviewSets_getToManyRelated")
		}

		public struct GetParameters {
			public var filterPreviewType: [FilterPreviewType]?
			public var filterAppStoreVersionLocalization: [String]?
			public var filterAppStoreVersionExperimentTreatmentLocalization: [String]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
			public var fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var limit: Int?
			public var include: [Include]?
			public var limitAppPreviews: Int?

			public enum FilterPreviewType: String, Codable, CaseIterable {
				case iphone67 = "IPHONE_67"
				case iphone61 = "IPHONE_61"
				case iphone65 = "IPHONE_65"
				case iphone58 = "IPHONE_58"
				case iphone55 = "IPHONE_55"
				case iphone47 = "IPHONE_47"
				case iphone40 = "IPHONE_40"
				case iphone35 = "IPHONE_35"
				case ipadPro3gen129 = "IPAD_PRO_3GEN_129"
				case ipadPro3gen11 = "IPAD_PRO_3GEN_11"
				case ipadPro129 = "IPAD_PRO_129"
				case ipad105 = "IPAD_105"
				case ipad97 = "IPAD_97"
				case desktop = "DESKTOP"
				case appleTv = "APPLE_TV"
				case appleVisionPro = "APPLE_VISION_PRO"
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case previewType
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appPreviews
			}

			public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
				case description
				case locale
				case keywords
				case marketingURL = "marketingUrl"
				case promotionalText
				case supportURL = "supportUrl"
				case whatsNew
				case appStoreVersion
				case appScreenshotSets
				case appPreviewSets
			}

			public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
				case locale
				case promotionalText
				case appCustomProductPageVersion
				case appScreenshotSets
				case appPreviewSets
			}

			public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
				case locale
				case appStoreVersionExperimentTreatment
				case appScreenshotSets
				case appPreviewSets
			}

			public enum FieldsAppPreviews: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case previewFrameTimeCode
				case mimeType
				case videoURL = "videoUrl"
				case previewFrameImage
				case previewImage
				case uploadOperations
				case assetDeliveryState
				case videoDeliveryState
				case appPreviewSet
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appPreviews
			}

			public init(filterPreviewType: [FilterPreviewType]? = nil, filterAppStoreVersionLocalization: [String]? = nil, filterAppStoreVersionExperimentTreatmentLocalization: [String]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, fieldsAppPreviews: [FieldsAppPreviews]? = nil, limit: Int? = nil, include: [Include]? = nil, limitAppPreviews: Int? = nil) {
				self.filterPreviewType = filterPreviewType
				self.filterAppStoreVersionLocalization = filterAppStoreVersionLocalization
				self.filterAppStoreVersionExperimentTreatmentLocalization = filterAppStoreVersionExperimentTreatmentLocalization
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
				self.fieldsAppStoreVersionExperimentTreatmentLocalizations = fieldsAppStoreVersionExperimentTreatmentLocalizations
				self.fieldsAppPreviews = fieldsAppPreviews
				self.limit = limit
				self.include = include
				self.limitAppPreviews = limitAppPreviews
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPreviewType, forKey: "filter[previewType]")
				encoder.encode(filterAppStoreVersionLocalization, forKey: "filter[appStoreVersionLocalization]")
				encoder.encode(filterAppStoreVersionExperimentTreatmentLocalization, forKey: "filter[appStoreVersionExperimentTreatmentLocalization]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppPreviews, forKey: "limit[appPreviews]")
				return encoder.items
			}
		}
	}
}
