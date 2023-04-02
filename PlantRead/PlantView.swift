//
//  PlantView.swift
//  PlantRead
//
//  Created by Simon Shamon on 4/2/23.
//
import SwiftUI

struct PlantView: View {
    @StateObject var plantModel = PlantModel()
    
    var body: some View {
        //display list of plants here
        List(plantModel.plants) { plant in
            Text(plant.common_name)
            Text(plant.sunlight)
        }
        .task {
            await self.plantModel.reload()
        }
        .refreshable {
            await self.plantModel.reload()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView()
    }
}


