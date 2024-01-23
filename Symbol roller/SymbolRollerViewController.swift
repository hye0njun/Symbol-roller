//
//  SymbolRollerViewController.swift
//  Symbol roller
//
//  Created by 황현준 on 2023/12/27.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LabelView: UILabel!
    @IBOutlet weak var ButtonView: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        ButtonView.tintColor = UIColor.systemPink

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        ImageView.image = UIImage(systemName:symbol)
        LabelView.text = symbol
    }
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
