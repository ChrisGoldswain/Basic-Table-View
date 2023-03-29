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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            let video = videos[indexPath.row]
            vc.img = video.image
            vc.ryan_text = video.title
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension ViewController {
    
    func fetchData() -> [Video] {
        let video1 = Video(image: Images.one, title: "Hello")
        let video2 = Video(image: Images.two, title: "Ryan")
        let video3 = Video(image: Images.three, title: "I hope")
        let video4 = Video(image: Images.four, title: "you")
        let video5 = Video(image: Images.five, title: "had")
        let video6 = Video(image: Images.six, title: "a fun")
        let video7 = Video(image: Images.seven, title: "weekend")
        let video8 = Video(image: Images.eight, title: "with")
        let video9 = Video(image: Images.nine, title: "your buddy")
        let video10 = Video(image: Images.ten, title: "Craig!")
        
        return [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
    }
}
