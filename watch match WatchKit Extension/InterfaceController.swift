//
//  InterfaceController.swift
//  watch match WatchKit Extension
//
//  Created by Stian on 08/06/2019.
//  Copyright © 2019 Stian Skulstad. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
    let tableData = ["One", "Two", "Three", "Four", "Five", "Six"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadTableData()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func loadTableData() {
        
        tableView.setNumberOfRows(tableData.count, withRowType: "RowController")
        
        for (index, rowModel) in tableData.enumerated() {
            
            if let rowController = tableView.rowController(at: index) as? RowController {
                rowController.rowLabel.setText(rowModel)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "DetailInterfaceController", context: tableData[rowIndex])
    }
}
