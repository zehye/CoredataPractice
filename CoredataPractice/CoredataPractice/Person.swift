//
//  Person.swift
//  CoredataPractice
//
//  Created by 졔님 on 2020/09/21.
//  Copyright © 2020 zehye. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct Person {
    var name: String
    var phoneNumber: String
    var shortcutNumber: Int
}

let zehye = Person(name: "zehye", phoneNumber: "010-1234-1234", shortcutNumber: 1)

let appDelegate = UIApplication.shared.delegate as! AppDelegate
let context = appDelegate.persistentContainer.viewContext

let entity = NSEntityDescription.entity(forEntityName: "Contact", in: context)

//if let entity = entity {
//    let person = NSManagedObject(entity: entity, insertInto: context)
//    person.setValue(zehye.name, forKey: "name")
//    person.setValue(zehye.phoneNumber, forKey: "phoneNumber")
//    person.setValue(zehye.shortcutNumber, forKey: "shortcutNumber")
//
//    do {
//        try context.save()
//    } catch {
//        print(error.localizedDescription)
//    }
//}

func fetchContact() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
    do {
        let contact = try context.fetch(Contact.fetchRequest()) as! [Contact]
        contact.forEach {
            print($0.name)
        }
    } catch {
        print(error.localizedDescription)
    }
}

