//
//  StringExtension.swift
//  RickAndMortyAPI
//
//  Created by Sara Diaz Perez on 29/1/24.
//

import Foundation

extension String {
    var localized: String {
          return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
      }
    
}
