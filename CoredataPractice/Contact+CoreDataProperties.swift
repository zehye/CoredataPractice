//
//  Contact+CoreDataProperties.swift
//  CoredataPractice
//
//  Created by 졔님 on 2020/09/21.
//  Copyright © 2020 zehye. All rights reserved.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var name: String?
    @NSManaged public var shortcutNumber: Int16
    @NSManaged public var phoneNumber: String?

}
