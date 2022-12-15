//
//  VideoCell.swift
//  TableViewAttempt
//
//  Created by Christopher Goldswain on 14.12.22.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoLabel.text = video.title
    }
}
