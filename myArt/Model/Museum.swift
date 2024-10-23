//
//  Museum.swift
//  myArt
//
//  Created by Apprenant 163 on 21/10/2024.
//

import Foundation

class Museum: Codable,Identifiable
{
    var idMusee: UUID?
    var nomMusee:String
    var descriptionMusee:String
    var imageMusee:String
    var adresseMusee :String
    var postalCodeMusee :String
    var cityMusee :String
    var countryMusee :String
    var latitudeMusee :Float
    var longitudeMusee :Float
    var heureOuvertureMusee :String
    var heureFermetureMusee :String
    
    
}
