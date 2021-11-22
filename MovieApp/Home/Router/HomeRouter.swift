//
//  HomeRouter.swift
//  MovieApp
//
//  Created by Rodrigo Torres on 22/11/2021.
//

import Foundation
import UIKit

class HomeRouter {
    
    var viewController: UIViewController {
        return createViewController()
    }
    
    private var sourceView: UIViewController?
    
    private func createViewController() -> UIViewController {
        let view = HomeView(nibName: "HomeView", bundle: Bundle.main)
        return view
    }
    
    func setSourceView(_ sourceView: UIViewController?) {
        guard let view = sourceView else {fatalError("Error")}
        self.sourceView = view
    }
}
