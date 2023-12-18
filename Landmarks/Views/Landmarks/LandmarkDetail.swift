//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Sabina Azimova on 13.12.23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var environmentModelData: ModelData
    
    var landmark: Landmark
//     @Binding var bindingModelData: ModelData
    
    var landmarkIndex: Int {
        environmentModelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset( y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(
                        isSet: $environmentModelData.landmarks[landmarkIndex].isFavorite
                    )
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        return LandmarkDetail(
            landmark: modelData.landmarks[0]
        )
        .environmentObject(modelData)
    }
}
