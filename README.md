TSModalViewController
=====================

A Custom Modal View Controller, Hides when tap outside the presented view(presented in FormSheet)

![DemoGIF](https://github.com/rollpard/TSModalViewController/blob/master/demo.gif)

##USAGE
````
// Make your ViewController inherit from TSModalViewController
#import "TSModalViewController.h"

@interface ToShowModalViewController : TSModalViewController

@end
````

````
- (IBAction)didClickedGoButton:(id)sender
{
    ToShowModalViewController *viewController = [[ToShowModalViewController alloc] init];
    viewController.modalPresentationStyle = UIModalPresentationFormSheet;
    [viewController.view setBackgroundColor:[UIColor whiteColor]];
    [self presentViewController:viewController animated:YES completion:nil];
}
````