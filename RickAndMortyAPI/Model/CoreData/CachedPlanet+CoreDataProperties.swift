//
//  CachedPlanet+CoreDataProperties.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 28/1/24.
//
//

import Foundation
import CoreData


extension CachedPlanet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedPlanet> {
        return NSFetchRequest<CachedPlanet>(entityName: "entityPlanet".localized)
    }

    @NSManaged public var name: String?
    @NSManaged public var url: String?
    @NSManaged public var origin: CachedCharacter?
    @NSManaged public var location: CachedCharacter?
    
    public var wrappedName: String {
        name ?? "wrappedName".localized
    }

    public var wrappedUrl: String {
        url ?? "wrappedUrl".localized
    }

}

extension CachedPlanet : Identifiable {

}