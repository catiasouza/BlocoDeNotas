

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textCampo: UITextView!
    let chave = "anotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if  let texto = textCampo.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    func recuperAnotacao() -> String {
        if let  textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        return ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textCampo.text = recuperAnotacao()
    }


}

