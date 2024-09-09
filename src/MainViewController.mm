#import <UIKit/UIKit.h>

// Declare the interface for MainViewController
@interface MainViewController : UIViewController
@end

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

    UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];

    [button setTitle:@"Fart" forState:UIControlStateNormal];

    button.frame = CGRectMake(100, 100, 200, 50);

    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    // Add the label to the view
    [self.view addSubview:helloLabel];
    [self.view addSubview:button];
}

- (void)buttonTapped {
    NSLog(@"Hello World");
}

@end
