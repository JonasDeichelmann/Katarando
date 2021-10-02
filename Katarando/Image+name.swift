//
//  Image+name.swift
//  ASi-Kompakt
//
//  Created by Jonas Deichelmann on 29.09.20.
//  Copyright © 2020 8devs. All rights reserved.
//

import Foundation
import SwiftUI

extension Image {
    init(name: String) {
        if UIImage(named: name) != nil {
            self.init(name)
        } else if UIImage(systemName: name) != nil {
            self.init(systemName: name)
        } else {
            self.init(systemName: "questionmark.circle.fill")
        }
    }
}
