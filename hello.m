#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create a UIButton
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // Set button frame
    myButton.frame = CGRectMake(100, 200, 200, 50); // x, y, width, height
    
    // Set button title
    [myButton setTitle:@"Tap Me" forState:UIControlStateNormal];
    
    // Set button background color
    [myButton setBackgroundColor:[UIColor blueColor]];
    
    // Add target action for button tap
    [myButton addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add button to view
    [self.view addSubview:myButton];
}

- (void)buttonTapped:(UIButton *)sender {
    NSLog(@"Button tapped!");
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // Create an instance of MyViewController
        MyViewController *viewController = [[MyViewController alloc] init];
        
        // Create a UIWindow
        UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        
        // Set root view controller
        window.rootViewController = viewController;
        
        // Make window visible
        [window makeKeyAndVisible];
        
        // Run the app
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([MyViewController class]));
    }
}
