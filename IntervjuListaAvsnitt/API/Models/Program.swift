//
//  Program.swift
//  IntervjuListaAvsnitt
//
//  Created by niknil01 on 2023-12-06.
//

import Foundation

struct Program: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String?
    let programimage: URL?
}


