//
//  SettingsViewController.swift
//  tips
//
//  Created by Salim Madjd on 9/18/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


	@IBOutlet weak var tip0Field: UITextField!


	@IBOutlet weak var tip1Field: UITextField!


	@IBOutlet weak var tip2Field: UITextField!


	@IBOutlet weak var tipRatesControl: UISegmentedControl!




	var preferedTipRateIndex = 0

	var defaults = NSUserDefaults.standardUserDefaults()


	var tipRate0 = 8
	var tipRate1 = 15
	var tipRate2 = 25





    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBAction func onReturn(sender: AnyObject) {


		dismissViewControllerAnimated(true, completion: nil)
	}


	@IBAction func onTap(sender: AnyObject) {

		view.endEditing(true)
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

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


	func saveSettings() {

		defaults.setInteger(tipRate0, forKey: "tipRate0")
		defaults.setInteger(tipRate1, forKey: "tipRate1")
		defaults.setInteger(tipRate2, forKey: "tipRate2")
		defaults.setInteger(preferedTipRateIndex, forKey: "preferedTipRateIndex")



		defaults.synchronize()



	}

	func loadSettings() {



	}

}
