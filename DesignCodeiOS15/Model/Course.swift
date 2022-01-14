//
//  Course.swift
//  DesignCodeiOS15
//
//  Created by Rogelio Torres on 13/01/22.
//

import SwiftUI

struct Course: Identifiable{
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}

var courses = [
    Course(title: "SwiftUI for iOS 15", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and...", image: "Illustration 5", logo: "Logo 4"),
    Course(title: "UI Design for iOS 15", subtitle: "20 sections - 3 hours", text: "Design an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 3", logo: "Logo 2"),
    Course(title: "Flutter for designers", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and...", image: "Illustration 1", logo: "Logo 1"),
    Course(title: "React Hooks Advance", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and...", image: "Illustration 2", logo: "Logo 3")
]
