//
//  PlantModel.swift
//  PlantRead
//
//  Created by Simon Shamon on 3/31/23.
//

import Foundation
@MainActor
class PlantModel: ObservableObject {
    @Published var plants : [Plant] = []
    
    
    func reload() async {
        let url = URL(string: "https://perenual.com/api/species-list?page=1&key=sk-n6BF6425eff595f73399")!
        let urlSession = URLSession.shared
        
        do{
            let (data, _) = try await urlSession.data (from: url)
           // let welcome = try? JSONDecoder().decode(Welcome.self, from: data)
        }
        
        catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
    
    
}
