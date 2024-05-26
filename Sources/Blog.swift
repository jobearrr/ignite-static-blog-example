//
//  Blog.swift
//
//
//  Created by Jobert Sá on 25/05/2024.
//

import Foundation
import Ignite

@main
struct Blog: Site {
    
    // The name of your site. Required.
    var name = "My personal blog"
    
    // The base URL for your site (we're going to use GitHub Pages)
    var url = URL("https://jobear.dev")
    
    // Assign the previously create theme to your website
    var theme = BlogTheme()
    // Assign the previously created HomePage as homepage to your website
    var homePage = HomePage(title: "Home")
    
    // This is the new application's entry point
    static func main() async {
        let blog = Blog()
        do {
            // Will perform the publishing flow and generate the website content
            try await blog.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}
