//
//  Channel.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 10/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    public private(set) var channelTitle : String!
    public private(set) var channelDescription : String!
    public private(set) var id : String!

    /* // Swift 4 Decodable
    public private(set) var _id : String!
    public private(set) var name : String!
    public private(set) var description : String!
    public private(set) var __v : Int?
    */

}
