//
//  File.swift
//  
//
//  Created by ywkimMac on 2022/12/01.
//

import Foundation

public struct Player: Identifiable, Codable {
    public static let MAX_BUDGET = 3000000
    public var id: UUID = UUID()
    public var name: String
    public var buyIn: Int = 0
    public var withdraw: Int = 0

    init(name: String) {
        self.name = name
    }

    mutating func rebuy(_ money: Int) throws {
        guard self.buyIn + money <= Self.MAX_BUDGET
        else { throw BankerError.tooMuchRebuy }
        self.buyIn += money
    }

    mutating func editAmount(_ money: Int) throws {
        guard self.buyIn + money > 0
        else { throw BankerError.notEnoughBudget }
        self.buyIn += money
    }
}

public extension Player {
    static let samples = [
        Player(name: "Player0"),
        Player(name: "Player1"),
        Player(name: "Player2"),
        Player(name: "Player3"),
        Player(name: "Player4"),
        Player(name: "Player5"),
        Player(name: "Player6"),
        Player(name: "Player7"),
        Player(name: "Player8"),
        Player(name: "Player9")
    ]
}
