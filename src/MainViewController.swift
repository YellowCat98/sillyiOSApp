import UIKit
import Foundation

@objc(MainViewController)
public class MainViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "Swifttest"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Fart", for: .normal)
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let toolbar: UIToolbar = {
        let toolbar = UIToolbar()
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        toolbar.barTintColor = .white
        toolbar.tintColor = .systemBlue
        toolbar.isTranslucent = true

        let firstButton = UIBarButtonItem(title: "Hello", style: .plain, target: self, action: #selector(firstAction))

        let secondButton = UIBarButtonItem(title: "HelloO", style: .plain, target: self, action: #selector(secondAction))

        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

        toolbar.items = [firstButton, flexibleSpace, secondButton]
        return toolbar
    }()

    @objc public func firstAction() {
        NSLog("Hello")
    }

    @objc public func secondAction() {
        NSLog("HelloO")
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(toolbar)

        // Set constraints for the label
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }

    @objc public func buttonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(
            title: "Hello.",
            message: "Are you skibidi?",
            preferredStyle: .alert
        )

        let okAction = UIAlertAction(title: "Yes", style: .default) { _ in 
            NSLog("User is Skibidi.")
        }

        let noAction = UIAlertAction(title: "No.", style: .cancel) { _ in
            NSLog("User is not skibidi.")
        }

        alertController.addAction(okAction)
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
    }
}