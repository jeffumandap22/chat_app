//
//  Constants.swift
//  LetsChat
//
//  Created by Jeffrey Umandap on 04/12/2018.
//  Copyright © 2018 Jeffrey Umandap. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) ->()

// url
let BASE_URL = "https://letschattt.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//segue
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER =  "toAvatarPicker"

//user defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//headers

let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]

