//
//  AppPreReleaseVersionsLinkagesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A response containing a list of related resource IDs.
struct AppPreReleaseVersionsLinkagesResponse: Decodable {

    /// (Required) The object types and IDs of the related resources.
    let data: [AppPreReleaseVersionsLinkagesResponse.Data]

    /// (Required) Navigational links including the self-link and links to the related data.
    let links: PagedDocumentLinks

    /// Paging information.
    let meta: PagingInformation?

}

extension AppPreReleaseVersionsLinkagesResponse {
    
    struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: preReleaseVersions
        let type: String
    
    }
}
