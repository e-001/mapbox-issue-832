//
//  Issue832_altApp.swift
//  Shared
//
//  Created by P on 11/19/21.
//

@_spi(Experimental) import MapboxMaps
import SwiftUI

@main
struct Issue832_altApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class GlobeMapView: MapView {
    override init(frame: CGRect, mapInitOptions: MapInitOptions = MapInitOptions()) {
        super.init(frame: frame, mapInitOptions: mapInitOptions)
        do {
        try self.mapboxMap.setMapProjection(.globe(GlobeMapProjection()))
        } catch {
            
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
