//
//  MapView.swift
//  SwiftUI Demo
//
//  Created by 陳冠甫 on 2021/1/13.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView{
        
        MKMapView()
    }

    
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>){
        
        //put the code to update the UIkit view
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region,animated: true)
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
}
