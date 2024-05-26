//
//  HomePage.swift
//
//
//  Created by Jobert Sá on 26/05/2024.
//

import Foundation
import Ignite

struct HomePage: StaticPage {
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func body(context: PublishingContext) async -> [BlockElement] {
        Text {
            "Hello, world!"
        }.font(.title1)
    }
}
