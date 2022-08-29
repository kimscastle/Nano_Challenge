//
//  ViewController.swift
//  Nano_Challenge_2
//
//  Created by uiskim on 2022/08/29.
//

import UIKit

class ViewController: UIViewController {
    
    let myModel = MyModel()
    
    let myQusetionList: [String] = [
        "나는 다른사람이 강하게 맞다고 주장하면 납득하는 편이다",
        "나는 주말엔 집에서 있는걸 선호하는 편이다",
        "모르는게있으면 다른사람에게 물어보는 편이다",
        "어색한 침묵이 흐를때 나는 먼저 말을 꺼내는 편이다",
        "하나를 끝낸후에야 비로소 다른걸 할수 있는 편이다",
        "오래전의 실수를 후회할때가 많다",
        "휴식을 취하기전에 집안일을 먼저 끝내놓는 편이다"
    ]
    
    var questionIndex = 0
    
    var beforeLastIndex: Int {
        myQusetionList.count - 2
    }
    
    var lastIndex: Int {
        myQusetionList.count - 1
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var surveyResponseButtons: [UIButton]!
    @IBOutlet weak var nextButton: UIButton!
    
    var chosedButton: Int?
    var chosedButtonList: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        surveyResponseButtons.forEach { button in
            view.addSubview(button)
            makeNonActiveButton(button)
        }
        questionLabel.text = myQusetionList[0]
    }
    
    @IBAction func responseButtons(_ sender: UIButton) {
        chosedButton = sender.tag
        makeActiveButton(sender)
        surveyResponseButtons.forEach { button in
            if sender != button {
                makeNonActiveButton(button)
            }
        }
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        guard let chosedButton = chosedButton else { return print("버튼을 눌러주세요") }
        chosedButtonList.append(chosedButton)
        print(chosedButtonList)
        surveyResponseButtons.forEach { makeNonActiveButton($0) }
        self.chosedButton = nil

        nextButton.setTitle( questionIndex == beforeLastIndex ? "제출후 확인" : "다음질문", for: .normal)

        if questionIndex == lastIndex {
            presentMyResult()
            //모달창띄우기
            guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "second") else { return }
            uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            self.present(uvc, animated: true)
            
            makeInit()
        } else {
            questionIndex += 1
        }
        questionLabel.text = myQusetionList[questionIndex]
        
        
        
    }
    
}

extension ViewController {
    func makeNonActiveButton(_ button: UIButton) {
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .medium, scale: .default)
        let nonActImage = UIImage(systemName: "circle.fill", withConfiguration: config)
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemGray2.cgColor
        button.setImage(nonActImage, for: .normal)
        button.tintColor = UIColor.systemGray2
        button.setTitleColor(UIColor.systemGray2, for: .normal)
    }
    
    func makeActiveButton(_ button: UIButton) {
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .medium, scale: .default)
        let actImage = UIImage(systemName: "checkmark.circle.fill", withConfiguration: config)
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.setImage(actImage, for: .normal)
        button.tintColor = UIColor.systemBlue
        button.setTitleColor(.black, for: .normal)
    }
    
    func makeInit() {
        questionIndex = 0
        chosedButtonList = []
    }
    
    func presentMyResult() {
        let surveyInout = MyModelInput(one: Double(chosedButtonList[0]), two: Double(chosedButtonList[1]), three: Double(chosedButtonList[2]), four: Double(chosedButtonList[3]), five: Double(chosedButtonList[4]), six: Double(chosedButtonList[5]), seven: Double(chosedButtonList[6]))

        if let myResult = try? myModel.prediction(input: surveyInout) {
            print(myResult.result)
        }
    }
}

