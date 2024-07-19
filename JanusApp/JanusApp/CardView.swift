//
//  CardView.swift
//  JanusApp
//
//  Created by Andrea Masturzo on 19/07/24.
//

import SwiftUI
import Charts

struct CardView: View {
    var title: String = "Titolo"
    var value: String = "100"
    var unitMeasure: String = "kWh"
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            HStack {
                ChartContainerView(viewModel: ChartsViewModel())
                Spacer()
                Text(value)
                Text(unitMeasure)
            }
        }
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CardView()
}
