//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Christopher Robles on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            HStack {
                DayForecast(day: "Sun", isRainy: false, isSnowing: false, high: 80, low: 69)
                
                DayForecast(day: "Mon", isRainy: false, isSnowing: false, high: 70, low: 50)
                
                DayForecast(day: "Tues", isRainy: true, isSnowing: false, high: 50, low: 30)
                
                DayForecast(day: "Wens", isRainy: false, isSnowing: false, high: 68, low: 59)
                    .padding()
            }
            HStack {
                DayForecast(day: "Thurs", isRainy: false, isSnowing: true, high: 40, low: 19)
                
                DayForecast(day: "Fri", isRainy: false, isSnowing: true, high: 33, low: 27)
                
                DayForecast(day: "Sat", isRainy: false, isSnowing: false, high: 45, low: 38)
                    .padding()
        }
            .padding()
            Text("© Christopher Robles 2025")
            
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day:String
    let isRainy: Bool
    let isSnowing: Bool
    let high:Int
    let low:Int
    
    var iconName:String {
        if isRainy {
            return "cloud.rain.fill"
        } else if isSnowing {
            return "cloud.snow"
        }
        else {
            return "sun.max.fill"
        }
    }
    
    var iconColor:Color {
        if isRainy {
            return Color.blue
        } else if isSnowing{
            return Color.blue
        }
        else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(3)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
    }
}
