//
//  ViewController.swift
//  tips
//
//  Created by Salim Madjd on 9/18/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


	@IBOutlet weak var billField: UITextField!

	@IBOutlet weak var tipLabel: UILabel!

	@IBOutlet weak var totalLabel: UILabel!


	@IBOutlet weak var tipControl: UISegmentedControl!

	

	var tipRangeArray = [0.08, 0.15, 0.25]

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		tipLabel.text = "$0.00"
		totalLabel.text = "$0.00"

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func OnEditingChanged(sender: AnyObject) {

		var billAmount = (billField.text as NSString).doubleValue
		var tipPercentage = tipRangeArray[tipControl.selectedSegmentIndex]
		
		var tip = billAmount * tipPercentage

		var total = billAmount + tip

		//tipLabel.text = "$ \(tip)"

		//totalLabel.text = "$ \(total)"

		tipLabel.text = String(format: "$ %.2f", tip)
		totalLabel.text = String( format: "$ %.2f", total)


	}

	@IBAction func onTap(sender: AnyObject) {

		view.endEditing(true)
	}


	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		println("view will appear")
	}

	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		println("view did appear")
	}

	override func viewWillDisappear(animated: Bool) {
		super.viewWillDisappear(animated)
		println("view will disappear")
	}

	override func viewDidDisappear(animated: Bool) {
		super.viewDidDisappear(animated)
		println("view did disappear")
	}
}



