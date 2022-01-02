//
//  MyAlert.swift
//  CoreDataDemo
//
//  Created by Sergey Efimov on 02.01.2022.
//

import UIKit

extension UIAlertController {
    
    func doAction(task: Task?, completion: @escaping (String) -> Void) {
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let name = self.textFields?.first?.text, !name.isEmpty else { return }
            completion(name)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        addAction(saveAction)
        addAction(cancelAction)
        addTextField { tf in
            tf.text = task?.title
        }
        
    }
}

