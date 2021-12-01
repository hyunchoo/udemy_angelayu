//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var bitcoinLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    @IBOutlet var currencyPicker: UIPickerView!
    
    // 속성을 수정하려면 이것을 var로 변경해야 합니다.
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        coinManager.delegate = self
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
      }
    }
    
//MARK: - CoinmanagerDelegate

    extension ViewController: CoinManagerDelegate {
        
    func didUpdatePrice(price:String, currency: String) {
        
        DispatchQueue.main.async {
            self.bitcoinLabel.text = price
            self.currencyLabel.text = currency
        }
    }
    
    func didFailWithError(error: Error) {
            print(error)
        }
    }
    
    //MARK: - UIpickerView - Datasource & Delegate
    
    extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
        //currencyArray의 수 만큼 선택창 뜨게함
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrcie(for: selectedCurrency)
       }
    }


