//
//  LeftToRightSegue.swift
//  H2O2Go
//
//  Created by LamAn Wyner on 9/1/19.
//  Copyright © 2019 LamAn Wyner. All rights reserved.
//

import UIKit

class LeftToRightSegue: UIStoryboardSegue {
    
    override func perform() {
        let sourceView = source.view!
        let destinationView = destination.view!
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        destinationView.frame = CGRect(x: -screenWidth, y: 0, width: screenWidth, height: screenHeight)
        let window = UIApplication.shared.keyWindow!
        window.insertSubview(destinationView, aboveSubview: sourceView)
        
        UIView.animate(withDuration: 0.4, animations: {
            sourceView.frame = sourceView.frame.offsetBy(dx: screenWidth, dy: 0)
            destinationView.frame = destinationView.frame.offsetBy(dx: screenWidth, dy: 0)
        }, completion: { finished in
            self.source.present(self.destination, animated: false, completion: nil)
        })
    }
    
}
