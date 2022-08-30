//
//  ViewController.swift
//  Nano_Challenge_2
//
//  Created by uiskim on 2022/08/29.
//

import UIKit

var surveyResult: String = ""
var totalResult = [Dictionary<String, Double>.Element]()

class ViewController: UIViewController {
    
    let myModel = MyRealFinalModel()
    
    let myQusetionList: [String] = [
        "나는 다른사람이 강하게 맞다고 주장하면 납득하는 편이다",
        "나는 주말엔 집에서 있는걸 선호하는 편이다",
        "모르는게있으면 다른사람에게 물어보는 편이다",
        "어색한 침묵이 흐를때 나는 먼저 말을 꺼내는 편이다",
        "하나를 끝낸후에야 다른걸 할수 있는 편이다",
        "오래전의 실수를 후회할때가 많다",
        "휴식을 취하기전에 집안일을 먼저 끝내놓는 편이다",
        "나는 영화를 보기전에 영화정보를 알아보는 편이다",
        "카페에 갔는데 메뉴가 잘못나오면 말하기를 망설인다",
        "재미있는 드라마가 나오면 기다렸다 몰아본다"
    ]
    
    var questionIndex = 0
    
    var beforeLastIndex: Int {
        myQusetionList.count - 2
    }
    
    var lastIndex: Int {
        myQusetionList.count - 1
    }

    @IBOutlet weak var questionCount: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var surveyResponseButtons: [UIButton]!
    @IBOutlet weak var nextButton: UIButton!
    
    var chosedButton: Int?
    var chosedButtonList: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        questionCount.text = "Question 1 / \(myQusetionList.count)"
        questionLabel.text = myQusetionList[0]
        
        surveyResponseButtons.forEach { button in
            view.addSubview(button)
            makeNonActiveButton(button)
        }
        
        view.addSubview(nextButton)
        nextButton.makeRoundButton()
        nextButton.backgroundColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1)
    }
    
    @IBAction func responseButtons(_ sender: UIButton) {
        //버튼을 누르면 누른버튼을 인식하고 다음질문버튼이 활성화됨
        chosedButton = sender.tag
        nextButton.backgroundColor = (chosedButton == nil) ? .systemGray4 : .systemBlue
        
        //버튼을 누르면 누른것만 acive상태로 만들고 나머지는 다 non-acive상태로 바꿈
        makeActiveButton(sender)
        surveyResponseButtons.forEach { button in
            if sender != button {
                makeNonActiveButton(button)
            }
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        //아무것도 안누르면 다음버튼이 동작하지 않음
        guard let chosedButton = chosedButton else { return print("버튼을 눌러주세요") }
        
        //다음버튼을 누르면 현재 누른 설문조사 결과가 저장되고 다음질문을 non-acitve상태로 바꿔줌
        chosedButtonList.append(chosedButton)
        self.chosedButton = nil
        sender.backgroundColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1)
        
        //다음 질문으로 넘어가면 모든 버튼이 비활성화 되어야함
        surveyResponseButtons.forEach { makeNonActiveButton($0) }

        
        //마지막질문에는 다음버튼의 title이 변함
        nextButton.setTitle( questionIndex == beforeLastIndex ? "제출후 확인" : "다음질문", for: .normal)
        
        //마지막질문이 끝나면 결과화면이 나옴
        if questionIndex == lastIndex {
            presentMyResult()
            guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "second") else { return }
            uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            self.present(uvc, animated: true)
            makeInit()
            questionCount.text = "Qusetion 1 / \(myQusetionList.count)"
        } else {
            questionIndex += 1
            questionCount.text = "Qusetion \(questionIndex + 1) / \(myQusetionList.count)"
        }
        questionLabel.text = myQusetionList[questionIndex]
    }
    
}

extension ViewController {
    func makeNonActiveButton(_ button: UIButton) {
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .medium, scale: .default)
        let nonActImage = UIImage(systemName: "circle.fill", withConfiguration: config)
        button.layer.cornerRadius = 28
        button.layer.borderWidth = 2
        button.layer.borderColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1).cgColor
        button.setImage(nonActImage, for: .normal)
        button.tintColor = #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1)
        button.setTitleColor( #colorLiteral(red: 0.8470588326, green: 0.8470588326, blue: 0.8470588326, alpha: 1) , for: .normal)
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
        let surveyInout = MyRealFinalModelInput(_1: Double(chosedButtonList[0]), _2: Double(chosedButtonList[1]), _3: Double(chosedButtonList[2]), _4: Double(chosedButtonList[3]), _5: Double(chosedButtonList[4]), _6: Double(chosedButtonList[5]), _7: Double(chosedButtonList[6]), _8: Double(chosedButtonList[7]), _9: Double(chosedButtonList[8]), _10: Double(chosedButtonList[9]))
        

        if let myResult = try? myModel.prediction(input: surveyInout) {
            surveyResult = myResult.result
            totalResult = myResult.resultProbability.sorted(by: {$0.value > $1.value})
            print(surveyResult)
            print(totalResult)
        }
    }
}

extension UIButton {
    func makeRoundButton() {
        self.layer.cornerRadius = 28
    }
}
