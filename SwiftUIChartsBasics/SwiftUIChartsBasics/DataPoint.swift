//
//  DataPoint.swift
//  SwiftUIChartsBasics
//
//  Created by Michael Parekh on 2/3/24.
//

import Foundation

// Conform to the Identifiable protocol so that we can loop through and differentiate the data points.
struct SleepDataPoint: Identifiable {
    var id = UUID().uuidString
    var day: String
    // The number of hours slept on each day of the week.
    var hours: Int
    // The type of sleep (e.g. "Night", "Nap", etc).
    var type: String = "Night"
}
