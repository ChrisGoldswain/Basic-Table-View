//
//  ViewController.swift
//  TableViewAttempt
//
//  Created by Christopher Goldswain on 14.12.22.
//

import UIKit

class ViewController: UIViewController {

    var videos: [Video] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "VideoCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "VideoCell")
        tableView.delegate = self
        tableView.dataSource = self
        videos = fetchData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        cell.setVideo(video: video)
        return cell
    }
}

extension ViewController {
    
    func fetchData() -> [Video] {
        let video1 = Video(image: Images.one, title: "1")
        let video2 = Video(image: Images.two, title: "2")
        let video3 = Video(image: Images.three, title: "3")
        let video4 = Video(image: Images.four, title: "4")
        let video5 = Video(image: Images.five, title: "5")
        let video6 = Video(image: Images.six, title: "6")
        let video7 = Video(image: Images.seven, title: "7")
        let video8 = Video(image: Images.eight, title: "8")
        let video9 = Video(image: Images.nine, title: "9")
        let video10 = Video(image: Images.ten, title: "10")
        
        return [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
    }
}
