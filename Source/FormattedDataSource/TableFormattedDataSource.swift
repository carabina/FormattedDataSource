//
//  TableFormattedDataSource.swift
//  FormattedDataSource
//
//  Created by BRANDERSTUDIO on 08.11.2017.
//  Copyright © 2017 BRANDERSTUDIO. All rights reserved.
//

import Foundation

public class TableFormattedDataSource: BaseFormattedDataSource, UITableViewDataSource {
  // MARK: - UITableViewDataSource
  public func numberOfSections(in tableView: UITableView) -> Int {
    return super.numberOfSections()
  }
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numberOfItemsInSection(section)
  }
  
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(
      withIdentifier: ContainerTableViewCell.identifier, for: indexPath)
    guard let containerCell = cell as? ContainerCellProtocol else {
      preconditionFailure("Cell must implement ContainerCellProtocol")
    }
    
    super.configureCell(formattedSections[indexPath.section], containerCell, indexPath)
    return cell
  }
}
