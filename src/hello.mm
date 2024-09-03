// MainViewController.mm

#import "MainViewController.h"
#import <UIKit/UIKit.h>

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set the background color
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create a UILabel
    UILabel *helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    helloLabel.text = @"Hello";
    helloLabel.textColor = [UIColor blackColor];
    helloLabel.textAlignment = NSTextAlignmentCenter;
    helloLabel.font = [UIFont systemFontOfSize:24];
    
    // Add the label to the view
    [self.view addSubview:helloLabel];
}

@end
