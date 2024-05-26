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
    
    var name = "My personal blog"
    var url = URL("jobearrr.github.io")
    
    var theme = BlogTheme()
    var homePage = HomePage(title: "Home")
    
    static func main() async {
        let blog = Blog()
        do {
            try await blog.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}
