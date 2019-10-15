

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
    
    // REMOVER A BARRA DE STATUS
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    // teclado...true entende q vc terminou de teclar e esconde o teclado
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textCampo.text = recuperAnotacao()
    }


}

