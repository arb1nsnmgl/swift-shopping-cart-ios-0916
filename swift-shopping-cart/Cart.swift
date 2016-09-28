//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items: [Item]
    
    init() {
        self.items = []
    }

    func totalPriceInCents() -> Int {
        var totalCost = 0
        for item in items {
            totalCost += item.priceInCents
        }
        return totalCost
    }
    
    func add(item fromCart: Item) { items.append(fromCart) }
        
    func remove(item fromCart: Item) {
        
        if let itemFromCart = items.index(of: fromCart) {
            items.remove(at: itemFromCart)
        }
    }
    
    func items(withName name: String) -> [Item] {
        var itemsWithName = [Item]()
        for item in items {
            if item.name == name {
                itemsWithName.append(item)
            }
        }
        return itemsWithName
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var itemsWithPrice = [Item]()
        for item in items {
            if item.priceInCents >= price {
                itemsWithPrice.append(item)
            }
        }
        return itemsWithPrice
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var itemsWithPrice = [Item]()
        for item in items {
            if item.priceInCents <= price {
                itemsWithPrice.append(item)
            }
        }
        return itemsWithPrice
    }
    
}



