//
//  BlogPost.swift
//
//
//  Created by Jobert Sá on 26/05/2024.
//

import Foundation
import Ignite

struct BlogPost: ContentPage {
    // Similar to HomePage, this provides the content of a blog post page
    func body(content: Content, context: PublishingContext) -> [BlockElement] {
        // This will print the title on a h1 tag
        Text(content.title).font(.title1)
        // Displays the tags related to the post separated by coma
        Text("Tags: \(content.tags.joined(separator: ", "))").font(.body)
        // Displays the size and estimated reading time
        Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.").font(.body)
        // Just like in SwiftUI, this adds a spacer between two elements
        Spacer()
        // The post body
        Text(content.body).font(.body)
    }
}
