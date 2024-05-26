//
//  HomePage.swift
//
//
//  Created by Jobert Sá on 26/05/2024.
//

import Foundation
import Ignite

struct HomePage: StaticPage {
    // The title for this page.
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    // Provides the content of this page using a block element builder.
    func body(context: PublishingContext) async -> [BlockElement] {
        Text {
            "Hello, world!"
        }.font(.title1) // translates into h1 HTML tag
    }
}
