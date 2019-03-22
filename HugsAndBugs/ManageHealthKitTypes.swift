//
//  ManageHealthKitTypes.swift
//  HugsAndBugs
//
//  Created by Darin Williams on 3/20/19.
//  Copyright © 2019 dwilliams. All rights reserved.
//

import Foundation
import HealthKit

public class ManageHealthKitTypes: NSObject{
    
    
    public static let sharedInstance = ManageHealthKitTypes()
    
    
    //MARK: Heath care store
    public let healthStore = HKHealthStore()
    
    private let ageCharacteristicType = HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)
    private let bmiQuantityType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)
    
  
    //MARK check to see if healthstore is available
    public func isHealthKitAvailable() -> Bool{
        guard let labResultType = HKObjectType.clinicalType(forIdentifier: .labResultRecord),
           let  medicationsType = HKObjectType.clinicalType(forIdentifier: .medicationRecord) else {
                fatalError("**ybabke ti create tge reqyested tyoes")
        }

        
        return HKHealthStore.isHealthDataAvailable()
    }
    
    public func requestHealthKitPermissionWithCompletion(completion: (Bool, NSError?) -> Void){
        
        
        //mARK set up Sets
        
        
    }
}
