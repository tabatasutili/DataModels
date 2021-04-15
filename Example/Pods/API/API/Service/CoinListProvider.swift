//
//  API.swift
//  Moeda Digital Super App
//
//  Created by Lucas Werner Kuipers on 14/04/2021.
//

import Foundation
import UIKit
import Alamofire



public class API {
	
	public static func requestCoinList() -> [Coin] {
		print("-- Initiating request for the coins list --")

		var coins = [Coin]()
		let key = "AD3C321C-D306-4391-84AD-573D38C149AB"
		let urlString = "https://rest.coinapi.io/v1/assets?apikey=\(key)"
		
		if let url = URL(string: urlString) {
			print("☑️ Success on converting urlString to URL")

			if let data = try? Data(contentsOf: url) {
				print("☑️ Success on getting data from url")
				print("URL: \(url)")

				let decoder = JSONDecoder()
				if let jsonCoins = try? decoder.decode([Coin].self, from: data) {
					print("☑️ Success on decoding json data based on [Coin].self")
					coins = jsonCoins
					print("✅ Coin list has been returned with a total of # \(coins.count) # coins")
//					print(coins)
					return coins
				} else {
					print("❌ Failed decoding json data based on [Coin].self")
					print("data: \(data)")
				}
			} else {
				print("❌ Failed getting data from url")
				print("url: \(url)")
			}
		} else {
			print("❌ Failed converting urlString to URL")
			print("urlString: \(urlString)")
		}
		print("-- Finished request for coins list --")
		return coins
	}
}

func print(_ coins: [Coin]) {
	let names = coins.map {$0.name}
	print(names)
}
