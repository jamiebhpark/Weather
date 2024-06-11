//
//  FavoriteCity+CoreDataProperties.swift
//  Weather
//
//  Created by JONGHUN PARK on 6/11/24.
//
//

import Foundation
import CoreData


extension FavoriteCity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteCity> {
        return NSFetchRequest<FavoriteCity>(entityName: "FavoriteCity")
    }

    @NSManaged public var name: String?

}

extension FavoriteCity : Identifiable {

}
