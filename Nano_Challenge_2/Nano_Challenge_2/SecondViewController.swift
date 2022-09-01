//
//  SecondViewController.swift
//  Nano_Challenge_2
//
//  Created by uiskim on 2022/08/29.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var similarityLabel: UILabel!
    @IBOutlet weak var goodMent: UILabel!
    @IBOutlet weak var goodImage: UIImageView!
    
    @IBOutlet weak var pagukSimilarityLabel: UILabel!
    @IBOutlet weak var badMent: UILabel!
    
    @IBOutlet weak var badImage: UIImageView!
    @IBOutlet weak var downRec: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        downRec.layer.cornerRadius = 3
        similarityLabel.text = makePercentage(totalResult[0].value) + "%"
        pagukSimilarityLabel.text = makePercentage(totalResult[totalResult.count - 1].value) + "%"
        
        switch totalResult[0].key {
        case "아-이작" :
            goodImage.image = UIImage(named: "g이작이")
        case "사-야" :
            goodImage.image = UIImage(named: "g사야")
        case "지-쿠" :
            goodImage.image = UIImage(named: "g지쿠")
        case "데이-지" :
            goodImage.image = UIImage(named: "g데이지")
        case "비&비" :
            goodImage.image = UIImage(named: "g비비")
        case "제이-슨" :
            goodImage.image = UIImage(named: "g이슨이")
        case "리이오" :
            goodImage.image = UIImage(named: "g리오")
        case "링-고" :
            goodImage.image = UIImage(named: "g링고")
        default:
            print("nil")
        }
        
        switch totalResult[totalResult.count - 1].key {
        case "아-이작" :
            badImage.image = UIImage(named: "아이작이랑")
        case "사-야" :
            badImage.image = UIImage(named: "사야랑")
        case "지-쿠" :
            badImage.image = UIImage(named: "지쿠랑")
        case "데이-지" :
            badImage.image = UIImage(named: "데이지랑")
        case "비&비" :
            badImage.image = UIImage(named: "비비랑")
        case "제이-슨" :
            badImage.image = UIImage(named: "제이슨이랑")
        case "리이오" :
            badImage.image = UIImage(named: "리오랑")
        case "링-고" :
            badImage.image = UIImage(named: "링고랑")
        default:
            print("nil")
        }
        
        
        
        
        switch (totalResult[0].value) * 100 {
        case 0..<30 :
            goodMent.text = "많이는 아니지만 제법(?) 비슷해요"
        case 30..<50 :
            goodMent.text = "우리 제법 잘 맞아요;;"
        case 50..<60 :
            goodMent.text = "이 안에 너...있다!"
        case 60..<70 :
            goodMent.text = "우리 혹시...천생연분?"
        case 70..<100 :
            goodMent.text = "혼.연.일.체"
        default:
            goodMent.text = "우리 맞기는 한걸까...?"
        }
        
        switch (totalResult[totalResult.count - 1].value) * 100 {
        case 0..<3 :
            badMent.text = "전생에 원수 사이였어도 이거보단 나을듯;;"
        case 3..<7 :
            badMent.text = "워어~ 머리부터 발끝까지 ~ 다안맞음."
        case 7..<12 :
            badMent.text = "보아라. 결국 파국이다."
        case 12..<30 :
            badMent.text = "이정도면 파국은 아닐지도...?"
        default:
            badMent.text = "이정도면 안 맞는건 아닌데...?"
        }

    }
    

    func makePercentage(_ input: Double) -> String {
        let percentage = input * 100
        return String(format: "%.2f", percentage)
    }

}
