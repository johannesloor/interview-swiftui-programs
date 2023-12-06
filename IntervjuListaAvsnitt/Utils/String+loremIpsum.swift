//
//  String+loremIpsum.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation

extension String {
    private static let loremIpsumString = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."

    private static let loremIpsumArray = loremIpsumString.split(separator: " ")

    public static func loremIpsum(_ words: Int? = nil) -> String {
        if let words = words {
            return loremIpsumArray.prefix(words).joined(separator: " ")
        } else {
            return loremIpsumString
        }
    }
}
