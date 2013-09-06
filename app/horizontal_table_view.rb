class HorizontalTableView < UITableView

  attr_accessor :tableView

  def viewDidLoad
    if super
      self.tableView.backgroundColor = UIColor.redColor
      self.tableView.rowHeight = 190
    end
  end

  def numberOfSectionsInTableView(tableView)
    1 
  end

  def tableView(tableView, numberOfRowsInSection: section)
    20
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = HorizontalCell.alloc.initWithFrame(CGRectMake(0,110,100, 100))
    cell
  end
  
end
