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
        // Adds a spacer between the header and list of posts
        Spacer()
        // Group all post div tags into one tag
        Group {
            for content in context.content(ofType: "post") {
                // Print each link to a post inside a separate div tag
                Group { Link(content) }
            }
        }
    }
}
