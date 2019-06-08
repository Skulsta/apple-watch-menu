//
//  DetailInterfaceController.swift
//  watch match WatchKit Extension
//
//  Created by Stian on 08/06/2019.
//  Copyright © 2019 Stian Skulstad. All rights reserved.
//

import Foundation
import WatchKit

class DetailInterfaceController: WKInterfaceController {

    @IBOutlet weak var detailLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let detailData = context as? String {
            detailLabel.setText(detailData)
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
}


