//
//  ViewController.swift
//  MyDicoding
//
//  Created by Wahid on 15/06/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameProfile: UILabel!
    
    @IBOutlet weak var followButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircleImageView()
        // Do any additional setup after loading the view.
        profileImageView.image = UIImage(named: "WahidProfile")
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
        followButton.setTitle(isFollow ? "Following" : "Follow", for: .normal) //Mengganti teks dalam button
    }
    private func setupCircleImageView(){
        profileImageView.layer.borderWidth = 1 // Menentukan lebar dari border/garis batas.
         
        profileImageView.layer.masksToBounds = false // Menentukan apakah perlu melakukan masking atau tidak.
         
        profileImageView.layer.borderColor = UIColor.black.cgColor // Menentukan warna border.
         
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
         
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas pada batas tampilan atau tidak.
    }
}

