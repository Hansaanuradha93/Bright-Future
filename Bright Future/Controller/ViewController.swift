//
//  ViewController.swift
//  Bright Future
//
//  Created by Hansa Anuradha on 2/13/19.
//  Copyright © 2019 Hansa Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    let quoteBook = QuoteBook()
    var quoteIndex = 0
    
    // MARK: - IBOutlets
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    
    // MARK: - View Controller methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Display first quote
        displayQuote(at: quoteIndex)
    }
    
    // MARK: - IBActions
    @IBAction func inspireMeButtonPressed(_ sender: UIButton) {
        
        
        if quoteIndex > quoteBook.quotes.count - 1 {
            quoteIndex = 0
            displayQuote(at: quoteIndex)
        } else {

            displayQuote(at: quoteIndex)
        }
        
    }
    
    
    // MARK: - Support Funnctions
    
    func displayQuote(at index : Int) {
        quoteTextLabel.text = quoteBook.quotes[index]
        authorImageView.image = UIImage(named: quoteBook.imageNames[index])
        authorNameLabel.text = quoteBook.authors[index]
        
        quoteIndex += 1

    }
    
    

}

