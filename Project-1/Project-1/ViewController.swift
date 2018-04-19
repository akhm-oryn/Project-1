//
//  ViewController.swift
//  Project-1
//
//  Created by Akhm Oryn on 17.04.2018.
//  Copyright © 2018 Getting Out Our Dreams. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        //объявление константы фм, с помощью которой в будушем можно будет работать с файловой системой
        let path = Bundle.main.resourcePath!
        // объявление константы, с помощью которой впредь можно обращаться к файлам из бандла (бандл - директория, содержащяя в себе все assests (прилагающие файлы) и скомпелированную программу. Простыми словами, находим путь к файлам
        let items = try! fm.contentsOfDirectory(atPath: path)
        //восклицательный знак (!) является принудительным извлечением значения из опционала
        //извлекаем значение из предыдущей константы path
        //при неудаче случится краш из-за "!"
        
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
                //здесь используется цикл
            }
        }
    print(pictures)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

