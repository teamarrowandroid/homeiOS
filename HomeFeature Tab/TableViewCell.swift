//
//  TableViewCell.swift
//  HomeFeature Tab
//
//  Created by harpreet singh on 2017-02-28.
//  Copyright © 2017 assignment2. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var voiceButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   

    @IBAction func likeButtonChange(_ sender: UIButton) {
        toggle(button: sender, onImage: #imageLiteral(resourceName: "likep"), ofImage: #imageLiteral(resourceName: "likeb"))
    }
    
    @IBAction func commentButtonChnge(_ sender: UIButton) {
        toggle(button: sender, onImage: #imageLiteral(resourceName: "commentsp"), ofImage: #imageLiteral(resourceName: "commentsb"))
    }
    
    
    @IBAction func voiceButtonChange(_ sender: UIButton) {
        toggle(button: sender, onImage: #imageLiteral(resourceName: "voicep"), ofImage: #imageLiteral(resourceName: "voiceb"))
        
    }
    
    func toggle(button:UIButton,onImage:UIImage,ofImage:UIImage)
    {
        if(button.currentImage==ofImage)
        {
            button.setImage(onImage, for: .normal)
        }
        else{
            button.setImage(ofImage, for: .normal)
        }
    }
    
}
