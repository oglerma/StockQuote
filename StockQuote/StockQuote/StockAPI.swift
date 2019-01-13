//
//  StockAPI.swift
//  StockQuote
//
//  Created by Ociel Lerma on 1/13/19.
//  Copyright © 2019 Ociel Lerma. All rights reserved.
//

import Foundation

class StockAPI {
    let APIkey   = "BCIEK8L4S9A8Y70W"
    var symbol   = ""
    lazy var url = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=\(symbol)&interval=1min&apikey=\(APIkey)"
    
    
    // Send HTTP request
    func sendHTTPrequest(){
        
    }
    
    // Parse the Json File
    func parseJSON(){
        
    }
    
    // Get current stock price
    func getCurrentStockPrice(){
        
    }
    
    // Get High, low, and closing price
    
    
    // Get some company info
    
    
    
}
