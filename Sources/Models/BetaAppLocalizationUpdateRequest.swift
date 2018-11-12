//
//  BetaAppLocalizationUpdateRequest.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A request containing a single resource.
struct BetaAppLocalizationUpdateRequest: Decodable {

    /// (Required) The resource data.
    let data: BetaAppLocalizationUpdateRequest.Data

}

extension BetaAppLocalizationUpdateRequest {
    
    struct Data: Decodable {
    
        /// The resource's attributes.
        let attributes: BetaAppLocalizationUpdateRequest.Data.Attributes?
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        let `id`: String
    
        /// (Required) The resource type.Value: betaAppLocalizations
        let type: String
    
    }
}

extension BetaAppLocalizationUpdateRequest.Data {
    /// Attributes that describe a resource.
    struct Attributes: Decodable {
    
        /// A description of your app that highlights features and functionality.
        let description: String?
    
        /// An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
        let feedbackEmail: String?
    
        /// A URL with information about your app. This URL is visible to testers in the TestFlight app
        let marketingUrl: String?
    
        /// A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
        let privacyPolicyUrl: String?
    
        /// Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
        let tvOsPrivacyPolicy: String?
    
    }
}
