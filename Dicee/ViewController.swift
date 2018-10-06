//
//  ViewController.swift
//  Dicee
//
//  Created by Pierre-Luc Bruyere on 2018-10-06.
//  Copyright © 2018 Pierre-Luc Bruyere. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  @IBOutlet weak var diceImageView1: UIImageView!
  @IBOutlet weak var diceImageView2: UIImageView!

  lazy private var diceImages : [UIImage?] = []

  override func viewDidLoad()
  {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    for index in 1...6
    {
      diceImages.append(UIImage(named: "dice" + index.description))
    }

    pickDices()
  }

  @IBAction func rollDice(_ sender: UIButton)
  {
    pickDices()
  }

  private func pickDices()
  {
    let dice1 = Int.random(in: 0..<diceImages.count)
    diceImageView1.image = diceImages[dice1]

    let dice2 = Int.random(in: 0..<diceImages.count)
    diceImageView2.image = diceImages[dice2]
  }
}

