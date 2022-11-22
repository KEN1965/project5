//
//  ContentView.swift
//  project5
//
//  Created by K.Takahama on R 4/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        //componets(separetedBy:)を使って文字列を配列に変換["a","b","c"] 改行
    }
    func test() {
        //次はスペルチェック機能をやっていきます
        let word = "swift"
        let checker = UITextChecker()
        //範囲を指定します
        let range = NSRange(location: 0, length: word.utf16.count)
        //スペルミスがあったらcheckerに渡します
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        //スペルの結果を確認
        let allGood = misspelledRange.location == NSNotFound
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
