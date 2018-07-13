//
//  ViewController.swift
//  RunLoop
//
//  Created by Wang Xiaodon, (Xiaodon.Wang@partner.bmwgroup.com) on 4/26/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        startTimer___()
    }

    private func basicRunLoopFunc() {
        // Using NSRunLoop (Foundation)
        _ = RunLoop.current // this is to return current runloop
        _ = RunLoop.main    // this is to return main runloop

        // Using CFRunLoop (Core Foundation, C API)
        _ = CFRunLoopGetCurrent()
        _ = CFRunLoopGetMain()

        // Please play around and there are many many more function to use other than those two
    }

    private func startTimer_() {
        Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(log),
            userInfo: nil,
            repeats: true
        )
    }

    private func startTimer__() {
        let timer = Timer(
            timeInterval: 1,
            target: self,
            selector: #selector(log),
            userInfo: nil,
            repeats: true
        )
        RunLoop.current.add(timer, forMode: .defaultRunLoopMode)
    }

    private func startTimer___() {
        let timer = Timer(
            timeInterval: 1,
            target: self,
            selector: #selector(log),
            userInfo: nil,
            repeats: true
        )
        RunLoop.current.add(timer, forMode: .commonModes)
    }

    @objc private func log() {
        NSLog("Logging...")
    }


}

