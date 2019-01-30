//
//  JSONHelperFunctions.swift
//  PrettyGoodPokedex
//
//  Created by Kevin Tan on 1/28/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import Foundation

// This method opens the file "pokedex.json" and reads the data as binary data (NSData) first. 
// In the "do" block, it converts the raw binary data into a JSON array object. A JSON object is 
// of type "Any", so an array of "Any" is returned ("[Any]"). If there is an error in the parsing,
// the error is recognized in the "catch" block, and the error message is printed out.
// Note: see pokedex.json to see what JSON syntax looks like. JSON is just a way to represent something
// in plain text data.
fileprivate func getJSON() -> [Any] {
    if
        let filePath = Bundle.main.path(forResource:"pokedex", ofType:"json"),
        let data = NSData(contentsOfFile: filePath),
        let json = try? JSONSerialization.jsonObject(with: data as Data, options: []),
        let jsonAsDict = json as? [String : Any],
        let pokemonJSON = jsonAsDict["pokemon"] as? [Any]
    {
        return pokemonJSON
    } else {
        return []
    }
}

// This method gets a JSON array of pokemon data and converts each JSON object 
// into an actual Pokemon object as defined in Pokemon.swift.
func getPokemon() -> [Pokemon] {
    let data = getJSON()
    
    var pokemonArray: [Pokemon] = []
    for object in data {
        if
            let pokemon = object as? Dictionary<String, Any>,
            let types = pokemon["type"] as? [String],
            let name = pokemon["name"] as? String,
            let url = pokemon["img"] as? String,
            let weight = pokemon["weight"] as? String
        {
            let newPokemon = Pokemon(name: name, imageURL: url, type: types[0], weight: weight)
            pokemonArray.append(newPokemon)
        }
    }
    
    return pokemonArray
}
