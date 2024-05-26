//
//  BlogTheme.swift
//
//
//  Created by Jobert Sá on 26/05/2024.
//

import Foundation
import Ignite

struct BlogTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)
            Body {
                page.body
            }
        }
    }
}
