//
//  AppDelegate.swift
//  SheetExample
//
//  Created by Kevin Gutowski on 1/14/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
    let sheetController = PreferencesSheet()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBAction func showSheet(_ sender: Any) {
        guard let sheetWindow = sheetController.window else { return }
        window.beginSheet(sheetWindow) { (response:NSApplication.ModalResponse) in
            if (response == NSApplication.ModalResponse.OK) {
                print("Clicked OK")
            } else {
                print("canceled")
            }
        }
    }
    
}

