

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var displayLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //displayLabel.text = “0”
        
        /*
         let cal = SubjectCalculation()
         
         let math = Subject(name: “수학“)
         math.setScore(score: 100)
         
         let english = Subject(name: “영어“)
         english.setScore(score: 50)
         
         let s1 = Student(name: “신규한“, id: 1000)
         s1.addSubject(subjects: math)
         s1.addSubject(subjects: english)
         s1.average = cal.averageCalculation(student: s1)
         // s1.setSubjects(subjects: [math, english])
         cal.calculation(student: s1)
         print(s1.totalSocre)
         */
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    var displayText:String = "0"
    
    var number: Int = 0
    var cal: String = ""
    var pressOperator: Int = 0
    //숫자액션
    @IBAction func numberKeyClick(btn:UIButton){
        
        let btnText: String = btn.titleLabel!.text!
        var applyText: String = displayLabel.text!
        
        //C를 눌렀을 경우 0이 나옴
        if(btnText == "C"){ //C를 누를 경우 값은 0
            applyText = "0"
        }else if(btnText != "C"){// C가 아닌 경우
            
//            if applyText == "0" {
//                applyText = btnText
//            } else if pressOperator == 1 {
//                applyText = btnText
//                pressOperator = 0
//            } else {
//                applyText = applyText + btnText
//            }
            switch applyText {
            case applyText = "0":
                applyText = "C"
            }
            }
            
            
        }
        
        displayLabel.text = applyText
        
    }
    //연산 버튼액션
    @IBAction func fundamental(btn: UIButton){
        
        let btnText: String = btn.titleLabel!.text!
        
        //
        
        if(btnText == "="){
            
            //사칙연산 대입
            
            // +를 입력할시 + 연산시행
            if (cal == "+") {
             number = number + Int(displayLabel.text!)!
            
            // -를 시행시 - 연산시행
            } else if (cal == "-"){
              number = number - Int(displayLabel.text!)!
            
            // x를 시행시 * 연산시행
            } else if (cal == "X"){
            number = number * Int(displayLabel.text!)!
            
            // /를 시행시 / 연산시행
            } else if (cal == "/"){
            number = number / Int(displayLabel.text!)!
            }

            // = 에 도달할 경우 넘버값은 연산시행 되고 난뒤 시행
            
         displayLabel.text = "\(number)"
            
        
        } else { //사칙연산
            number = Int(displayLabel!.text!)!
            cal = btn.titleLabel!.text!
            pressOperator = 1
        }
        
    }
    
    
    
    
    
    
}

    /*
     //강사님코드
     if displayLabel.text == “0"{
     displayText = btn.titleLabel!.text!
     }else{
     displayText += btn.titleLabel!.text!
     }
     displayLabel.text = displayText
     }
     @IBAction func clearBtn(btn:UIButton){
     displayText = “0”
     displayLabel.text = displayText
     }
     */
    
    

    
    

    
        
        







