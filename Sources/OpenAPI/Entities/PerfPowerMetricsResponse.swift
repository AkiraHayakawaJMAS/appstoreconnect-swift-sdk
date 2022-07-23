// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct PerfPowerMetricsResponse: Codable {
	public var data: [PerfPowerMetric]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [PerfPowerMetric], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}
}