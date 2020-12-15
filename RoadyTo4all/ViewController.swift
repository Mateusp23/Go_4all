//
//  ViewController.swift
//  Challenger4all
//
//  Created by user187916 on 12/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btnChangeColor: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnChangeColor.layer.cornerRadius = 4
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func didTouchChangeColorBackground(_ sender: Any) {
        
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy HH:mm:ss"
        let dateString = df.string(from: date)
        
        self.alterColor(number: dateString.last ?? "0")
             
    }
    
    private func alterColor(number: Character) {
        
        switch number {
        case "0":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .white)
            break
        case "1":
            self.colorsLayout(colorLabel: .white, colorLabelBtn: .white, colorView: .black)
            break
        case "2":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .blue)
            break
        case "3":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .green)
            break
        case "4":
            self.btnChangeColor.setTitleColor(.black, for: .normal)
            self.labelTitle.textColor = .black
            self.view.backgroundColor = UIColor(red: 254, green: 48, blue: 87, alpha: 1.0)
            break
        case "5":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .red)
            break
        case "6":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .purple)
            break
        case "7":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .yellow)
            break
        case "8":
            self.colorsLayout(colorLabel: .black, colorLabelBtn: .black, colorView: .gray)
            break
        case "9":
            self.btnChangeColor.setTitleColor(.black, for: .normal)
            self.labelTitle.textColor = .black
            self.view.backgroundColor = UIColor(red: 177, green: 156, blue: 217, alpha: 1.0)
            break
        default:
            break
        }
    }
    
    private func colorsLayout(colorLabel: UIColor, colorLabelBtn: UIColor, colorView: UIColor) {
        self.view.backgroundColor = colorView
        self.btnChangeColor.setTitleColor(colorLabelBtn, for: .normal)
        self.labelTitle.textColor = colorLabel
    }

}

