//
//  ContentView.swift
//  SwiftUIChartsBasics
//
//  Created by Michael Parekh on 2/3/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var data = [
        SleepDataPoint(
            day: "Mon",
            hours: 6),
        SleepDataPoint(
            day: "Mon",
            hours: 2,
            type: "Nap"),
        SleepDataPoint(
            day: "Tue",
            hours: 6),
        SleepDataPoint(
            day: "Wed",
            hours: 10),
        SleepDataPoint(
            day: "Thu",
            hours: 6),
        SleepDataPoint(
            day: "Fri",
            hours: 1),
        SleepDataPoint(
            day: "Fri",
            hours: 1),
        SleepDataPoint(
            day: "Fri",
            hours: 2),
        SleepDataPoint(
            day: "Sat",
            hours: 7),
        SleepDataPoint(
            day: "Sun",
            hours: 7)
    ]
    
    var body: some View {
        Chart {
            ForEach(data) { d in
                // Plot the 'Day' on the X-axis and the 'Hours' on the Y-axis of the bar chart.
                BarMark(x: .value("Day", d.day), y: .value("Hours", d.hours))
                    // Color the bars based on the 'Type' of sleep.
                    .foregroundStyle(by: .value("Type", d.type))
            }
        }
        .chartYScale(range: .plotDimension(padding: 60))
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
