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
        return NSFetchRequest<CachedCharacter>(entityName: "entityCharacter".localized)
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
        name ?? "wrappedName".localized
    }
    
    public var wrappedStatus: String {
        status ?? "wrappedStatus".localized
    }
    
    public var wrappedSpecies: String {
        species ?? "wrappedSpecies".localized
    }
    
    public var wrappedType: String {
        type ?? "wrappedType".localized
    }
    
    public var wrappedGender: String {
        gender ?? "wrappedGender".localized
    }
    
    public var wrappedImage: String {
        image ?? "wrappedImage".localized
    }
    
    public var wrappedCachedLocation: CachedPlanet {
        cachedLocation!
    }

    public var wrappedCachedOrigin: CachedPlanet {
        cachedOrigin!
    }
    
    public var wrappedUrl: String {
        url ?? "wrappedUrl".localized
    }
    
    public var wrappedCreated: String {
        created ?? "wrappedCreated".localized
    }
    
}

extension CachedCharacter : Identifiable {

}
