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
        // initial api: "https://perenual.com/api/species-list?page=1&key=sk-n6BF6425eff595f73399"
        let url = URL(string: "https://perenual.com/api/species-list?page=1&key=sk-n6BF6425eff595f73399")!
        let urlSession = URLSession.shared
        
        do{
            struct Response: Decodable {
                let data: [Plant]
            }
             
            let (data, _) = try await urlSession.data(from: url)
            let response = try JSONDecoder().decode(Response.self, from: data)
            self.plants = response.data
            
           //let welcome = try? JSONDecoder().decode(Plant.self, from: Plant)
        }
        
        catch {
            debugPrint("Error loading \(url): \(String(describing: error))")
        }
    }
    
    
}
