//
//  SwiftUIView.swift
//  
//
//  Created by ywkimMac on 2022/12/01.
//

import SwiftUI

public struct Game: Identifiable, Codable {
    public var id: UUID = UUID()
    public var startDate: Date
    public var endDate: Date
    public var attendees: [Player] = []

    init(startDate: Date, endDate: Date, attendees: [Player] = Player.samples) {
        if #available(iOS 15, *) {
            self.startDate = .now
            self.endDate = .now
        } else {
            self.startDate = Date()
            self.endDate = Date()
        }
        self.attendees = attendees
    }
}

public extension Game {
    @available(iOS 15, *)
    static let sample = Game(startDate: .now, endDate: .now)
}
