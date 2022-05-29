//
//  AuthManager.swift
//  Spotify
//
//  Created by 岩本竜斗 on 2022/05/28.
//

import Foundation
import UIKit

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "67ea58e488e140a2b3ef5f52f38f4611"
        static let clientSecret = "ecb6d2b1cf3a4cc8ae0393d4d490574d"
    }
    
    private init() {
        
    }
    
    public var signInURL: URL? {
        let base   = "https://accounts.spotify.com/authorize"
        let scopes = "user-read-private"
        let redirectURL = "https://www.iosacademy.io"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURL)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping ((Bool) -> Void)) {
        // Get Token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
