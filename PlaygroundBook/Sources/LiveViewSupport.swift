//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport

let storyboard = UIStoryboard(name: "LiveView", bundle: nil)


/// Instantiates a new instance of a live view.
///
/// This function instantiate a specific LiveView for the page.

public func instantiateLiveView(identifier: String) -> PlaygroundLiveViewable{
    let viewController = storyboard.instantiateViewController(withIdentifier: identifier)
    
    guard let liveViewController = viewController as? LiveViewController else {
        fatalError("\(identifier) is not a LiveViewController; please either update the storyboard or this function")
    }
    
    return liveViewController
}

