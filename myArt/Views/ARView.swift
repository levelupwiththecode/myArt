//
//  ARView.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//


import SwiftUI
import ARKit
import UIKit


struct ARViewContainer: UIViewRepresentable {
    let artwork: Artwork

    
    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView(frame: .zero)
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        arView.session.run(configuration)
        return arView
    }

    func updateUIView(_ uiView: ARSCNView, context: Context) {
        // Ajouter du contenu à afficher
        let plane = SCNPlane(width: 0.5, height: 0.7)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: artwork.imageArt)

        plane.materials = [material]

        let planeNode = SCNNode(geometry: plane)
        planeNode.position = SCNVector3(0, 0, -1)  // À 1 mètre devant la caméra

        uiView.scene.rootNode.addChildNode(planeNode)
    }
}

struct ARView: View {
    let artwork: Artwork
    var body: some View {
        ARViewContainer(artwork: artwork)
            .edgesIgnoringSafeArea(.all)
    }
}

/*
#Preview {
    ARView(artwork: Artwork(id: "2DE80E91-EE03-4A8D-9C32-97BBE6E8AB7E", title: "Les Tournesols", artist: "Vincent van Gogh", imageName: "sunflowers", year: "1888", description: "Un exemple d'une des œuvres iconiques de Van Gogh."))
}
*/


