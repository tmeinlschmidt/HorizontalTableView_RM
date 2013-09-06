class HorizontalCell < UITableViewCell

  attr_accessor :bar

  BAR_WIDTH = 30

  def initWithFrame(frame)
    if super
      cell_width = self.contentView.size.height
      @bar = UIView.alloc.initWithFrame(CGRectMake(cell_width/2-BAR_WIDTH/2, 5, BAR_WIDTH, rand(100)+10))
      @bar.backgroundColor = UIColor.blackColor
      self.contentView.addSubview @bar

      line = UIView.alloc.initWithFrame(CGRectMake(0, 75, 44, 1))
      line.backgroundColor = UIColor.redColor
      self.contentView.addSubview line

      self.transform = CGAffineTransformMakeRotation(-Math::PI * 0.5)
    end
    self
  end

  def setSelected(selected, animated: animated)
    super
    @bar.backgroundColor = (selected) ? UIColor.whiteColor : UIColor.blackColor
    self.contentView.backgroundColor = UIColor.redColor
  end

end
