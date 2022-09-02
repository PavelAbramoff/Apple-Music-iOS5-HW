//
//  MusicList.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 02.09.2022.
//

import UIKit

class MusicList: UIViewController {
    
    var tableView = UITableView()
    var musics: [Music] = []
    
    // MARK: Identifier
    struct Cell {
        static let musicCell = "MusicCell"
    }
    
    // MARK: Serch
    lazy var searchController: UISearchController = {
        let s = UISearchController(searchResultsController: nil)
        s.obscuresBackgroundDuringPresentation = false
        s.searchBar.placeholder = "Search"
        s.searchBar.sizeToFit()
        s.searchBar.searchBarStyle = .prominent
        
        s.searchBar.scopeButtonTitles = ["Apple Music", "Ваша медиатека"]
        s.searchBar.text = "Артисты, песни, тексты..."
        
        return s
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        navigationItem.searchController = searchController
        musics = fetchData()
        configureTableView()
}
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 120
        tableView.register(MusicCell.self, forCellReuseIdentifier: Cell.musicCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}
// MARK: UITableViewDelegate, UITableViewDataSource
extension MusicList: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.musicCell) as! MusicCell
        let music = musics[indexPath.row]
        cell.set(music: music)
        
        return cell
    }
}

// MARK: Extansions
extension MusicList {
    
    func fetchData() -> [Music] {
        let music1 = Music(image: Images.pirates, title: "Pirates")
        let music2 = Music(image: Images.pirates2, title: "Pirates2")
        let music3 = Music(image: Images.bach, title: "Bach")
        let music4 = Music(image: Images.impuls, title: "Impuls")
        let music5 = Music(image: Images.utesov, title: "Utesov")
        
        return [music1, music2, music3, music4, music5]
    }
}
