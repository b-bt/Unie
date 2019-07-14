//
//  AddGoalTableViewController.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class AddGoalTableViewController: UITableViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var goalName: UITextField!
    @IBOutlet weak var goalValue: UITextField!
    @IBOutlet weak var goalLimitDate: UIDatePicker!
    
    let imagePicker = UIImagePickerController()
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.imagePicker.delegate = self
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(loadPictureBtnTapped))
        self.imageView.addGestureRecognizer(tapRecognizer)
    }

    @objc func loadPictureBtnTapped() {
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .savedPhotosAlbum
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addGoal(_ sender: Any) {
        guard let name = goalName.text,
            let image = self.selectedImage,
            let valueStr = self.goalValue.text,
            let value = Int(valueStr)
        else {
            let alert = UIAlertController(title: "Dados incompletos", message: "Por favor, preencha todos os dados do seu objetivo", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        let date = self.goalLimitDate.date
        
        FinancialManager.shared.createGoal(withName: name, image: image, date: date, andValue: value)
        self.navigationController?.popViewController(animated: true)
    }
}

extension AddGoalTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.contentMode = .scaleAspectFill
            imageView.image = pickedImage
            self.selectedImage = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
}
