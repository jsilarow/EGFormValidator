//
//  ValidatorViewController+Email.swift
//  EGFormValidator
//
//  Created by Evgeny Gushchin on 09/12/16.
//  Copyright © 2016 Evgeny Gushchin. All rights reserved.
//

import UIKit

extension ValidatorViewController {
    /**
     * Email Validator
     */
    fileprivate func EmailValidator(value: Any?, params: [Any?]) -> Bool {
        if let email = value as? String, (email.isValidEmail() || email == "") {
            return true
        }
        return false
    }
    
    
    
    func addEmailValidation<UIViewThatConformsValidatableProtocol: UIView>
                                            (control: UIViewThatConformsValidatableProtocol?,
                                    errorPlaceholder: ValidationErrorDisplayable?,
                                        errorMessage: String = "El correo electrónico es inválido")
                            where UIViewThatConformsValidatableProtocol: Validatable {
        
        let aValidator = Validator(control: control,
                                   predicate: EmailValidator,
                                   predicateParameters: [],
                                   errorPlaceholder: errorPlaceholder,
                                   errorMessage: errorMessage)
        self.add(validator: aValidator)
    }
}
