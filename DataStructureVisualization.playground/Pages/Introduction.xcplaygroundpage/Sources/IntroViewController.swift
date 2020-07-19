import UIKit

public class IntroViewController: UIViewController {
    // characters
    let D = UILabel()
    let a1 = UILabel()
    let t1 = UILabel()
    let a2 = UILabel()
    let S = UILabel()
    let t2 = UILabel()
    let r1 = UILabel()
    let u1 = UILabel()
    let c = UILabel()
    let t3 = UILabel()
    let u2 = UILabel()
    let r2 = UILabel()
    let e = UILabel()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        // initialze the characters
        characterInit()
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // add animation to characters
        characterAnimate()
    }
    
    private func characterAnimate() {
        // animate in order, with time delay
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.D.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.2, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.a1.frame.origin.y += 500
            self?.view.superview?.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.4, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.t1.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.6, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.a2.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.8, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.S.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.t2.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1.2, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.r1.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1.4, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.u1.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1.6, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.c.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 1.8, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.t3.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 2, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.u2.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 2.2, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.r2.frame.origin.y += 500
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 2.4, usingSpringWithDamping: 2, initialSpringVelocity: 10, options: [], animations: { [weak self] in
            self?.e.frame.origin.y += 500
        }, completion: nil)
    }
    
    private func characterInit() {
        // set text, color and frame of UILabel
        setProperty(of: D, text: "D", color: .red, frame: CGRect(x: 180, y: -300, width: 60, height: 60))
        setProperty(of: a1, text: "a", color: .orange, frame: CGRect(x: 215, y: -300, width: 60, height: 60))
        setProperty(of: t1, text: "t", color: .green, frame: CGRect(x: 240, y: -300, width: 60, height: 60))
        setProperty(of: a2, text: "a", color: .blue, frame: CGRect(x: 260, y: -300, width: 60, height: 60))
        setProperty(of: S, text: "S", color: .red, frame: CGRect(x: 130, y: -240, width: 60, height: 60))
        setProperty(of: t2, text: "t", color: .blue, frame: CGRect(x: 165, y: -240, width: 60, height: 60))
        setProperty(of: r1, text: "r", color: .purple, frame: CGRect(x: 190, y: -240, width: 60, height: 60))
        setProperty(of: u1, text: "u", color: .cyan, frame: CGRect(x: 210, y: -240, width: 60, height: 60))
        setProperty(of: c, text: "c", color: .systemPink, frame: CGRect(x: 235, y: -240, width: 60, height: 60))
        setProperty(of: t3, text: "t", color: .brown, frame: CGRect(x: 260, y: -240, width: 60, height: 60))
        setProperty(of: u2, text: "u", color: .magenta, frame: CGRect(x: 280, y: -240, width: 60, height: 60))
        setProperty(of: r2, text: "r", color: .gray, frame: CGRect(x: 305, y: -240, width: 60, height: 60))
        setProperty(of: e, text: "e", color: .systemIndigo, frame: CGRect(x: 320, y: -240, width: 60, height: 60))
    }
    
    private func setProperty(of label: UILabel, text: String, color: UIColor, frame: CGRect) {
        label.text = text
        label.textColor = color
        label.frame = frame
        label.font = UIFont(descriptor: UIFontDescriptor(name: "Noteworthy", size: 55), size: 55)
        view.addSubview(label)
    }
}
