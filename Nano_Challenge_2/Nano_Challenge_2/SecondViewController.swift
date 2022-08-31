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
    @IBOutlet weak var similarityLabel: UILabel!
    @IBOutlet weak var mainBacgroundView: UIView!
    @IBOutlet weak var goodMent: UILabel!
    
    @IBOutlet weak var pagukNameLabel: UILabel!
    @IBOutlet weak var pagukSimilarityLabel: UILabel!
    @IBOutlet weak var pagukBackgroundView: UIView!
    @IBOutlet weak var badMent: UILabel!
    
    @IBOutlet weak var downRec: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        downRec.layer.cornerRadius = 3
        mainBacgroundView.backgroundColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1)
        pagukBackgroundView.backgroundColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1)
        mainBacgroundView.layer.cornerRadius = 20
        pagukBackgroundView.layer.cornerRadius = 20
        myResultLabel.text = surveyResult
        myResultLabel.addTextOutline(usingColor: .systemBlue, outlineWidth: 3)
        similarityLabel.text = makePercentage(totalResult[0].value) + "%"
        pagukNameLabel.text = totalResult[totalResult.count - 1].key
        pagukNameLabel.addTextOutline(usingColor: .red, outlineWidth: 3)
        pagukSimilarityLabel.text = makePercentage(totalResult[totalResult.count - 1].value) + "%"
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

extension UILabel {
    func addTextOutline(usingColor outlineColor: UIColor, outlineWidth: CGFloat) {
        class OutlinedText: UILabel{
            var outlineWidth: CGFloat = 0
            var outlineColor: UIColor = .clear

            override public func drawText(in rect: CGRect) {
                let shadowOffset = self.shadowOffset
                let textColor = self.textColor

                let c = UIGraphicsGetCurrentContext()
                c?.setLineWidth(outlineWidth)
                c?.setLineJoin(.round)
                c?.setTextDrawingMode(.stroke)
                self.textAlignment = .center
                self.textColor = outlineColor
                super.drawText(in:rect)

                c?.setTextDrawingMode(.fill)
                self.textColor = textColor
                self.shadowOffset = CGSize(width: 0, height: 0)
                super.drawText(in:rect)

                self.shadowOffset = shadowOffset
            }
        }

        let textOutline = OutlinedText()
        let outlineTag = 9999

        if let prevTextOutline = viewWithTag(outlineTag) {
            prevTextOutline.removeFromSuperview()
        }

        textOutline.outlineColor = outlineColor
        textOutline.outlineWidth = outlineWidth
        textOutline.textColor = textColor
        textOutline.font = font
        textOutline.text = text
        textOutline.tag = outlineTag

        sizeToFit()
        addSubview(textOutline)
        textOutline.frame = CGRect(x: -(outlineWidth / 2), y: -(outlineWidth / 2),
                                   width: bounds.width + outlineWidth,
                                   height: bounds.height + outlineWidth)
    }
}
