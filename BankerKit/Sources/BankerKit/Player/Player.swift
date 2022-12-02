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
    public var remains: Int = 0

    init(name: String, buyIn: Int = 0) {
        self.name = name
        self.buyIn = buyIn
    }

    var total: Int {
        return buyIn + remains
    }

    var payback: Int {
        return (total / 2) - withdraw
    }

    mutating func rebuy(_ money: Int) throws {
        guard self.buyIn + money <= Self.MAX_BUDGET
        else { throw BankerError.tooMuchRebuy }
        self.buyIn += money
    }

    mutating func editBuyIn(_ money: Int) throws {
        guard self.buyIn + money > 0
        else { throw BankerError.notEnoughBudget }
        self.buyIn += money
    }
}

public extension Player {
    static let samples = [
        Player(name: "Player0", buyIn: 100000),
        Player(name: "Player1", buyIn: 100000),
        Player(name: "Player2", buyIn: 100000),
        Player(name: "Player3", buyIn: 100000),
        Player(name: "Player4", buyIn: 100000),
        Player(name: "Player5", buyIn: 100000),
        Player(name: "Player6", buyIn: 100000),
        Player(name: "Player7", buyIn: 100000),
        Player(name: "Player8", buyIn: 100000),
        Player(name: "Player9", buyIn: 100000)
    ]
}
