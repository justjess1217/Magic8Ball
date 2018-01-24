//
//  Magic8Ball.swift
//  AnswerMeNow Apple WatchKit Codebase Demo
//
//  Created by Jess Telmanik on 12/29/17.
//  Copyright © 2017 Jess Telmanik. All rights reserved.
//

import WatchKit

class Magic8BallIC:  WKInterfaceController {
    
    @IBOutlet var answerLabel: WKInterfaceLabel!
    
    @IBAction func tapAnswer(_ sender: Any) {
        createAnswer()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    func createAnswer() {
        let eightBallArray: [String] = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful", "This was a Demo"]
        print(eightBallArray.count)
        let random = Int(arc4random_uniform(UInt32(eightBallArray.count)))
        answerLabel.setText(eightBallArray[random])
    }
}
