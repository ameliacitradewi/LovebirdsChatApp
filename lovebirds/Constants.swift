//
//  Constants.swift
//  lovebirds
//
//  Created by Amelia Citra on 03/03/23.
//

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let appName = "Lovebirds Chat"
    
    struct BrandColors {
        static let mediumGray = "BrandMediumGray"
        static let darkGray = "BrandDarkGray"
        static let lightGray = "BrandLightGray"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
