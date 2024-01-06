import UIKit
import MetalKit

enum Colors {
    static let wenderlichGreen = MTLClearColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
}

class ViewController: UIViewController {

    var metalView: MTKView {
        return view as! MTKView
    }
    
    var renderer: Renderer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderer = Renderer(device: MTLCreateSystemDefaultDevice()!)
        
        metalView.device = renderer.device
        metalView.clearColor = Colors.wenderlichGreen
        metalView.delegate = renderer
    }
}
