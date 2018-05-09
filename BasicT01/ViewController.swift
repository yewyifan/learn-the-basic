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

    var books : [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .red
        //can provide custom code starting here
        
        setupBooks()
    }
    
    func setupBooks(){
        let page1 = Page(number: 1, text: "Text for first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Job", author: "Walter Isaacson", pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Bacraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4"),
            ]);
        
        self.books = [book, book2]
        
        /* 2 ways to use ? operator safely */
        
        /* Way 1 */
        // printBookForLoopWay1()
        
        /* Way 2 */
        // printBookForLoopWay2()
        
    }
    
    func printBookForLoopWay1(){
        if let unwrappedBooks = self.books {
            // ! operator is needed for ? property
            // ! operator is very unsafe
            //for book in self.books! {
            for book in unwrappedBooks {
                print("Book [" + book.title + "]");
                for page in book.pages{
                    print(" Page number : " + String(page.number) + "; text : " + page.text)
                }
            }
        }
    }
    
    func printBookForLoopWay2(){
        guard let books = self.books else { return }
        
        for book in books {
            print("Book [" + book.title + "]");
            for page in book.pages{
                print(" Page number : " + String(page.number) + "; text : " + page.text)
            }
        }
    }

}

