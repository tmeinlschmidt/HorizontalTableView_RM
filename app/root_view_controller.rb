class RootViewController < UIViewController

  def viewDidLoad
  end

  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    self.view.backgroundColor = UIColor.whiteColor

    @tableView = HorizontalTableView.alloc.initWithFrame(CGRectMake(0, 0, 768, 1024))

    @tableView.backgroundColor = UIColor.redColor
    @tableView.showsVerticalScrollIndicator = false
    @tableView.showsHorizontalScrollIndicator = false
    @tableView.transform = CGAffineTransformMakeRotation(-Math::PI * 0.5)
    @tableView.frame = CGRectMake(0,200,768,200)
    @tableView.dataSource = @tableView
    @tableView.delegate = self
    @tableView.setSeparatorStyle(UITableViewCellSeparatorStyleNone)
    self.view.addSubview @tableView
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    NSLog("root #{indexPath.row}")
  end
end
