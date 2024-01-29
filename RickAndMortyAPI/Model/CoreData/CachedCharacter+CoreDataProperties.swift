//
//  CachedCharacter+CoreDataProperties.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 28/1/24.
//
//

import Foundation
import CoreData
import UIKit


extension CachedCharacter {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedCharacter> {
        return NSFetchRequest<CachedCharacter>(entityName: "CachedCharacter")
    }

    @NSManaged public var name: String?
    @NSManaged public var status: String?
    @NSManaged public var species: String?
    @NSManaged public var type: String?
    @NSManaged public var gender: String?
    @NSManaged public var image: String?
    @NSManaged public var url: String?
    @NSManaged public var created: String?
    @NSManaged public var id: Int64
    @NSManaged public var favorite: Bool
    @NSManaged public var cachedLocation: CachedPlanet?
    @NSManaged public var cachedOrigin: CachedPlanet?

    public var wrappedName: String {
        name ?? "Unknown name"
    }
    
    public var wrappedStatus: String {
        status ?? "Unknown status"
    }
    
    public var wrappedSpecies: String {
        species ?? "Unknown species"
    }
    
    public var wrappedType: String {
        type ?? "Unknown type"
    }
    
    public var wrappedGender: String {
        gender ?? "Unknown gender"
    }
    
    public var wrappedImage: String {
        image ?? "Unknown gender"
    }
    
    public var wrappedCachedLocation: CachedPlanet {
        cachedLocation!
    }

    public var wrappedCachedOrigin: CachedPlanet {
        cachedOrigin!
    }
    
    public var wrappedUrl: String {
        url ?? "Unknown url"
    }
    
    public var wrappedCreated: String {
        created ?? "Unknown created"
    }
    
}

extension CachedCharacter : Identifiable {

}
