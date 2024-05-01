#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create a UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Tap Me" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(100, 100, 200, 50); // Set button frame (position and size)
    
    // Add action for button tap
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add button to the view
    [self.view addSubview:button];
}

- (void)buttonTapped:(UIButton *)sender {
    NSLog(@"Button tapped!");
    // Implement any actions you want to perform when the button is tapped
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // Create a UIWindow
        UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        
        // Create an instance of MyViewController
        MyViewController *viewController = [[MyViewController alloc] init];
        
        // Set MyViewController as the root view controller of the window
        window.rootViewController = viewController;
        
        // Make the window visible
        [window makeKeyAndVisible];
        
        // Start the application's event loop
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([MyViewController class]));
    }
}
