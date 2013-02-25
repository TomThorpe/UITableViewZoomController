UITableViewZoomController
=========================

A Cocoa Touch UITableViewController subclass in that provides a zoom effect as cells appear for the first time (similar in style to Google+ iPhone app)

Usage
---
* In the Source directory, find `TTUITableViewZoomController.h` and `TTUITableViewZoomController.m` and include them in your prohject.
* Where you would normally use (subclass) a `UITableViewController`, #import "TTUITableViewZoomController.h" and subclass `TTUITableViewZoomController` instead.
* That's it!

Options
---
There are a few options that you can use to customise the animation. These are set by Properties. You should set them in the viewDidLoad method in the Controller where you have subclassed UITableViewZoomController 

* `cellZoomXScaleFactor` - How much to scale to x axis of the cell before it is animated back to normal size. 1 is normal size. >1 is bigger, <1 is smaller.
* `cellZoomYScaleFactor` - How much to scale to y axis of the cell before it is animated back to normal size. 1 is normal size. >1 is bigger, <1 is smaller.
* `cellZoomInitialAlpha` - The initial alpha value of the cell when it starts animation. For example if you set this to be 0 then the cell will begin completely transparent, and will fade into view as well as zooming. Value between 0 and 1.
* `cellZoomAnimationDuration` - The duration of the animation effect, in seconds. 

Example Code
---
MyTableViewController.h:
```  objc
#import <UIKit/UIKit.h>
#import "TTUITableViewZoomController.h"

@interface MyTableViewController : TTUITableViewZoomController

@end
```
MyTableViewController.m:
```  objc
#import "MyTableViewController.h"

@implementation MyTableViewController
-(void)viewDidLoad{
    self.cellZoomInitialAlpha = [NSNumber numberWithFloat:1.0]; //these four properties are optional. If you don't supply them defaults will be used.
    self.cellZoomAnimationDuration = [NSNumber numberWithFloat:0.5];
    self.cellZoomXScaleFactor = [NSNumber numberWithFloat:0.9];
    self.cellZoomYScaleFactor = [NSNumber numberWithFloat:0.9];
}

/*Do the rest of the Table View Datasource and Delegate methods here as usual*/

@end
```

Then just create an instance of MyTableViewController and add it to any view or window as you normally would!

Demo
---
The included source is an XCode project which you can open to see a demo.

The Demo/TableViews folder also shows two example of UITableViewControllers that subclass TTUITableViewZoomController; one that uses a custom cell style and one that uses one of the default Cocoa Touch styles. Note that this effect generaly works better on custom cell styles than the default cell styles, but I've provided demos of both for you to try.

You can also refer to these demos for reference of how to use the library if anything is unclear :-)
