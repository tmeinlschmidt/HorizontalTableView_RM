class AppDelegate
  
  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
  
  def navigationController
    @navigationController ||= UINavigationController.alloc.initWithRootViewController(RootViewController.alloc.init)
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.rootViewController = navigationController
    window.makeKeyAndVisible
    true
  end
end
