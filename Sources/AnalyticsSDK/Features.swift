//
//  Features.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

import Foundation

#if ANALYTICS_LOCATION
public let ENABLE_LOCATION = true
#else
public let ENABLE_LOCATION = false
#endif

#if ANALYTICS_BASIC
public let ENABLE_BASIC = true
#else
public let ENABLE_BASIC = false
#endif
