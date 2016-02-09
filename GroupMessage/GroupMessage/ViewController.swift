//
//  ViewController.swift
//  GroupMessage
//
//  Created by Pandurangan, Senthil on 2/8/16.
//

import UIKit
import Contacts
import ContactsUI
import MessageUI

class ViewController: UIViewController,UIPickerViewDelegate, CNContactPickerDelegate, MFMessageComposeViewControllerDelegate  {

    @IBOutlet weak var messageText: UITextView!
    @IBOutlet weak var selectFriendsButton: UITextView!
    
    //Array to hold the selected phone numbers to send the message
    var phoneNumbers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Action handler when selectFriends button is clicked
    @IBAction func selectFriends(sender: AnyObject) {
        phoneNumbers = [String]() //reset
        
        //create the iOS native Contacts picker
        let contactPickerViewController = CNContactPickerViewController()
        
        contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "phoneNumbers.@count >0")
        contactPickerViewController.delegate = self
        
        presentViewController(contactPickerViewController, animated: true, completion: nil)
    }
    
    //Function to display list of contacts
    //Additionally it filters the contacts with Mobile phone numbers
    func contactPicker(picker: CNContactPickerViewController, didSelectContacts contacts: [CNContact]) {
        for contact in contacts {
            print (contact.givenName, contact.familyName)
            for phoneNumber in contact.phoneNumbers {
                if(phoneNumber.label.containsString("Mobile")) {
                    phoneNumbers.append(phoneNumber.valueForKey("value")?.valueForKey("digits") as! String)
                }
            }
            
        }
        
        print(phoneNumbers)
        self.dismissViewControllerAnimated(true, completion: nil) //dimiss the old view
        sendSMSMessage("")

    }
    
    //delegate (callback) implementation for MFMessageComposeViewControllerDelegate
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        
        switch (result) {
        case MessageComposeResultCancelled:
            print("Message was cancelled")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed:
            print("Message failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent:
            print("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
            
            let alertController = UIAlertController(title: "Success", message: "Message Successfully sent!", preferredStyle: UIAlertControllerStyle.ActionSheet)
            // add an action (button)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))

            self.presentViewController(alertController, animated: true, completion: nil)
            
        default:
            break;
        }
    }

    func sendSMSMessage(sender: AnyObject) {
        let messageVC = MFMessageComposeViewController()
        messageVC.body = messageText.text
        messageVC.recipients = phoneNumbers
        messageVC.messageComposeDelegate=self
        if MFMessageComposeViewController.canSendText() {
            self.presentViewController(messageVC, animated: true, completion: nil)
        }else {
            print("In Simulator mode. Cannot send Message")
        }
    }


    func contactPicker(picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty]) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }


}

