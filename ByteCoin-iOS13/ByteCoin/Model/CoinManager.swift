//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    
    func didUpdatePrice(price:String, currency:String)
    func didFailWithError(error: Error)
    
}



struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "API KEY"
    
    let currencyArray = ["USD", "BRL","HKD","IDR","ILS","INR","JPY","KRW"]

    //MARK: - getCoinPrice
    
    func getCoinPrcie(for currency: String) {
        
      //  API 키와 함께 baseURL 끝에 선택한 통화를 추가하려면 문자열 연결을 사용하십시오.
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
       // 선택적 바인딩을 사용하여 urlString에서 생성된 URL의 래핑 해제
       if let url = URL(string: urlString) {
            
           // 기본 구성으로 새 URLSession 개체를 만듭니다.
           let session = URLSession(configuration: .default)
           
          // URLSession에 대한 새 데이터 작업 생성
           let task = session.dataTask(with: url) { (data, respones, error) in
               if error != nil {
                   self.delegate?.didFailWithError(error: error!)
                   return
               }
               if let safeData = data {
                   //data가 오면 safeData에 저장
                   
                   if let bitcoinPrice = self.parseJSON(safeData) {
                       
                       let priceString = String(format: "%.2f", bitcoinPrice)
                       // 문자열을 소수점 2자리로 정리
                       self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                    
                   }
               }
              
           }
           //비트코인 평균 서버에서 데이터를 가져오는 작업을 시작합니다.
           task.resume()
        }
    }
    
    //MARK: - parseJSON
    
    func parseJSON(_ data: Data) -> Double? {

        //JSONDecoder 생성
        let decoder = JSONDecoder()
        do{
            
            //CoinData 구조를 사용하여 데이터 디코딩 시도
            let decodedData = try decoder.decode(CoinData.self, from: data)
            
            //디코딩된 데이터에서 마지막 속성을 가져옵니다.
            let lastPlace = decodedData.rate
            print(lastPlace)
            //lastPlace 값
            return lastPlace
            
        } catch {
           
            //오류를 잡아서 인쇄하십시오.
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
    
}
