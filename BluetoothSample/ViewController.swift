//
//  ViewController.swift
//  BluetoothSample
//
//  Created by Masahiko Sato on 2017/08/01.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {
    var centralManager: CBCentralManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    @IBAction func didTapStartScan(_ sender: Any) {
        log?.debug("start scan")
        centralManager.scanForPeripherals(withServices: nil, options: nil)
    }
    
    @IBAction func didTapStopScan(_ sender: Any) {
        log?.debug("stop scan")
        centralManager.stopScan()
    }
}

extension ViewController: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        log?.debug(central.state)
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        log?.debug(peripheral)
    }
}
