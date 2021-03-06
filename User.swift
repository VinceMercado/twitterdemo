//
//  User.swift
//  Twitter
//
//  Created by Vince  on 2/26/17.
//  Copyright © 2017 Vince Mercado. All rights reserved.
//

import UIKit

class User: NSObject {

    var name: NSString?
    var screenname: NSString?
    var profileUrl: NSURL?
    var tagline: NSString?
    
    init(dictionary: NSDictionary) {
        name = dictionary["name"] as! NSString?
        screenname = dictionary["screen_name"] as! NSString?
        let profileUrlString = dictionary["profile_image_url_https"] as! NSString?
        if let profileUrlString = profileUrlString {
            profileUrl = NSURL(string: profileUrlString as String)
            
        }
        
        tagline = dictionary["description"] as! NSString?
    }
    
}
