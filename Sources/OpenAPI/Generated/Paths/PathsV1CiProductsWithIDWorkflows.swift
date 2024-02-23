// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID {
	public var workflows: Workflows {
		Workflows(path: path + "/workflows")
	}

	public struct Workflows {
		/// Path: `/v1/ciProducts/{id}/workflows`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiWorkflowsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciProducts-workflows-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var fieldsCiWorkflows: [FieldsCiWorkflows]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
				case macOsVersions
				case name
				case testDestinations
				case version
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

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
				case name
				case version
				case xcodeVersions
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

			public enum Include: String, Codable, CaseIterable {
				case macOsVersion
				case product
				case repository
				case xcodeVersion
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.fieldsCiWorkflows = fieldsCiWorkflows
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsScmRepositories = fieldsScmRepositories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
