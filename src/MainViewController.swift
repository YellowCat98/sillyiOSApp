import UIKit

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
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)

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
        print("Hello!!!!")
    }
}