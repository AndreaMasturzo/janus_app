//
//  DetailsView.swift
//  JanusApp
//
//  Created by Raffaele Siciliano on 19/07/24.
//

import SwiftUI

struct DetailsView: View {
    @State private var selection = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("What is your favorite color?", selection: $selection) {
                            Text("OGGI").tag(0)
                            Text("MESE").tag(1)
                            Text("ANNO").tag(2)
                        }
                        .pickerStyle(.segmented)
                        
            Image("chartsEx2")
                .resizable()
                .scaledToFit()
//                .frame(width: 360)
            Text("Energia prodotta questo mese: 450 kWh")
                .bold()
            VStack {
                DetailRowView(imageName: "presentation", titleText: "Mese di picco produttivo", titleCaption: "Questa è la media dell'energia prodotta ogni giorno", energy: "15 kWh")
                Divider()
                DetailRowView(imageName: "presentation", titleText: "Media energia settimanale", titleCaption: "Mese dell’anno in cui la produzione di energia è al massimo", energy: "105 kWh")
                Divider()
                DetailRowView(imageName: "presentation", titleText: "Media energia mensile", titleCaption: "Mese dell’anno in cui la produzione di energia è al massimo", energy: "3200 kWh")
                Divider()
                DetailRowView(imageName: "clock", titleText: "Orario di picco produttivo", titleCaption: "Mese dell’anno in cui la produzione di energia è al massimo", energy: "14:20")
                Divider()
                DetailRowView(imageName: "calendar1", titleText: "Giorno di picco produttivo", titleCaption: "Mese dell’anno in cui la produzione di energia è al massimo", energy: "Lun")
                Divider()
                DetailRowView(imageName: "calendars", titleText: "Mese di picco produttivo", titleCaption: "Mese dell’anno in cui la produzione di energia è al massimo", energy: "Giu")
                
            }
            Spacer()
            .navigationTitle("Energia Prodotta")
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    DetailsView()
//}
