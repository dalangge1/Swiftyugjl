//
//  YMTHomePageTabBarController.swift
//  Yamoto
//
//  Created by pactera on 2020/10/23.
//  Copyright © 2020 pactera. All rights reserved.
//

import UIKit

class YMTHomePageTabBarController: YMTBaseTabBarController {
    
    let  vc1  = TabBarModel(navContorller:YMTHomeNavigaitonController(rootViewController: YMTHomePageController()), titleName: NSLocalizedString("HomePage", comment: ""), imageName: "homepage_n", selectName: "homepage_s")
    
    let  vc2  =  TabBarModel(navContorller:YMTHomeNavigaitonController(rootViewController: YMTTaobaoList()), titleName: NSLocalizedString("Order", comment: ""), imageName: "order_n", selectName: "order_s")
    
    let  vc3 = TabBarModel(navContorller:YMTHomeNavigaitonController(rootViewController: YMTOrderViewController()), titleName: NSLocalizedString("Freight", comment: ""), imageName: "freight_n", selectName: "freight_s")
    
    let  vc4 = TabBarModel(navContorller:YMTHomeNavigaitonController(rootViewController:YMTPersonalViewController() ), titleName: NSLocalizedString("Personal", comment: ""), imageName: "personal_n", selectName: "personal_s")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // WZKeyChainTool.keyChianDelete(identifier: uuidKeyChain)
        setChilds(controllers: [vc1,vc2,vc3,vc4])
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)], for: .normal)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
