//
//  PreferencesSheet.swift
//  SheetExample
//
//  Created by Kevin Gutowski on 1/14/21.
//

import Cocoa

class PreferencesSheet: NSWindowController {
    
    convenience init() {
        self.init(windowNibName:"PreferencesSheet")
    }
    
    @IBAction func clickedOK(_ sender: Any) {
        guard let window = self.window else { return }
        window.endSheet(window, returnCode: NSApplication.ModalResponse.OK)
    }
    @IBAction func clickedCancel(_ sender: Any) {
        guard let window = self.window else { return }
        window.endSheet(window, returnCode: NSApplication.ModalResponse.cancel)
    }
}
