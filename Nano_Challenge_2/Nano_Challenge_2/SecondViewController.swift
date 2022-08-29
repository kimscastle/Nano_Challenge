//
//  SecondViewController.swift
//  Nano_Challenge_2
//
//  Created by uiskim on 2022/08/29.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myResultLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var similarityLabel: UILabel!
    
    @IBOutlet weak var pagukNameLabel: UILabel!
    @IBOutlet weak var pagukSimilarityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(totalResult)
        myResultLabel.text = surveyResult
        subTitleLabel.text = "\(surveyResult)과(와) 나의 유사도"
        similarityLabel.text = makePercentage(totalResult[0].value) + "%"
        pagukNameLabel.text = totalResult[totalResult.count - 1].key
        pagukSimilarityLabel.text = makePercentage(totalResult[totalResult.count - 1].value) + "%"
    }
    

    func makePercentage(_ input: Double) -> String {
        let percentage = input * 100
        return String(format: "%.2f", percentage)
    }

}
