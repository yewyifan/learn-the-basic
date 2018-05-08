//
//  ViewController.swift
//  BasicT01
//
//  Created by Eddie Yew Yi Fan on 08/05/2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]){
        self.title = title;
        self.author = author;
        self.pages = pages;
    }
}

class Page{
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number;
        self.text = text;
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .red
        //can provide custom code starting here
        
        let page1 = Page(number: 1, text: "Text for first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        //print(page1.text)
        //print(page2.text)
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Job", author: "Walter Isaacson", pages: pages)
        //print(book.title, book.author)
        print("Title: \(book.title), Author : \(book.author)");
        
        let firstPage = book.pages[0];
        print(firstPage.text);
    }

}

