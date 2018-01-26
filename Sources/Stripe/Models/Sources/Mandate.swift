//
//  Mandate.swift
//  Stripe
//
//  Created by Andrew Edwards on 1/26/18.
//

/**
 Mandate
 https://stripe.com/docs/api/curl#create_source-mandate
 */

public protocol Mandate {
    associatedtype TOS: TOSAcceptance
    
    var acceptance: TOS? { get }
    var notificationMethod: String? { get}
}

public struct StripeMandate: Mandate, StripeModel {
    public var acceptance: StripeTOSAcceptance?
    public var notificationMethod: String?
    
    enum CodingKeys: String, CodingKey {
        case acceptance
        case notificationMethod = "notification_method"
    }
}
