// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var ciProducts: CiProducts {
		CiProducts(path: path + "/ciProducts")
	}

	public struct CiProducts {
		/// Path: `/v1/ciProducts`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiProductsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciProducts-get_collection")
		}

		public struct GetParameters {
			public var filterProductType: [FilterProductType]?
			public var filterApp: [String]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var fieldsCiWorkflows: [FieldsCiWorkflows]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var limitPrimaryRepositories: Int?

			public enum FilterProductType: String, Codable, CaseIterable {
				case app = "APP"
				case framework = "FRAMEWORK"
			}

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case additionalRepositories
				case app
				case buildRuns
				case bundleID = "bundleId"
				case createdDate
				case name
				case primaryRepositories
				case productType
				case workflows
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case bundleID = "bundleId"
				case primaryRepositories
			}

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case actions
				case buildRun
				case builds
				case cancelReason
				case clean
				case completionStatus
				case createdDate
				case destinationBranch
				case destinationCommit
				case executionProgress
				case finishedDate
				case isPullRequestBuild
				case issueCounts
				case number
				case product
				case pullRequest
				case sourceBranchOrTag
				case sourceCommit
				case startReason
				case startedDate
				case workflow
			}

			public enum FieldsCiWorkflows: String, Codable, CaseIterable {
				case actions
				case branchStartCondition
				case buildRuns
				case clean
				case containerFilePath
				case description
				case isEnabled
				case isLockedForEditing
				case lastModifiedDate
				case macOsVersion
				case manualBranchStartCondition
				case manualPullRequestStartCondition
				case manualTagStartCondition
				case name
				case product
				case pullRequestStartCondition
				case repository
				case scheduledStartCondition
				case tagStartCondition
				case xcodeVersion
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case alternativeDistributionKey
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case marketplaceSearchDetail
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsScmRepositories: String, Codable, CaseIterable {
				case defaultBranch
				case gitReferences
				case httpCloneURL = "httpCloneUrl"
				case lastAccessedDate
				case ownerName
				case pullRequests
				case repositoryName
				case scmProvider
				case sshCloneURL = "sshCloneUrl"
			}

			public init(filterProductType: [FilterProductType]? = nil, filterApp: [String]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limitPrimaryRepositories: Int? = nil) {
				self.filterProductType = filterProductType
				self.filterApp = filterApp
				self.fieldsCiProducts = fieldsCiProducts
				self.limit = limit
				self.include = include
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.fieldsCiWorkflows = fieldsCiWorkflows
				self.fieldsApps = fieldsApps
				self.fieldsScmRepositories = fieldsScmRepositories
				self.limitPrimaryRepositories = limitPrimaryRepositories
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterProductType, forKey: "filter[productType]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(limitPrimaryRepositories, forKey: "limit[primaryRepositories]")
				return encoder.items
			}
		}
	}
}
