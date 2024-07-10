#import <UIKit/UIKit.h>
#import <iostream>

// Declare a C++ function
extern "C" void helloFromCPP();

@interface ViewController : UIViewController

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // Call the C++ function to output "Hello" to the console
    helloFromCPP();
    
    // Display "Hello" on the screen
    UILabel *helloLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    helloLabel.text = @"Hello";
    helloLabel.textColor = [UIColor blackColor];
    [self.view addSubview:helloLabel];
}

@end