//
//  ViewController.swift
//  Contador
//
//  Created by Rayana Prata Neves on 07/10/21.
//

 /*
    - Label -> UILabel
    - Botão -> UIButton
    - Imagem -> UIImage ou UIImageView
    - Storyboard
 */

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var contadorCoposDagua: Int = 0
    
    // MARK: Outlets
    @IBOutlet weak var labelQtdAgua: UILabel!
    @IBOutlet weak var buttonAumentar: UIButton!
    @IBOutlet weak var buttonDiminuir: UIButton!
    @IBOutlet weak var labelQuantidadeTotal: UILabel!
    @IBOutlet weak var imageViewCopoDagua: UIImageView!
    @IBOutlet weak var viewQt: UIView!
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: Actions
    @IBAction func incrementaContador(_ sender: Any) {
        contadorCoposDagua += 100
        labelQuantidadeTotal.text = String(contadorCoposDagua) + "ml"
    }
    
    @IBAction func decrementaContador(_ sender: Any) {
        
        if contadorCoposDagua != 0 {
            contadorCoposDagua -= 100
            labelQuantidadeTotal.text = String(contadorCoposDagua) + "ml"
        }
    }
    
    // MARK: Methods
    private func setupUI() {
        buttonAumentar.layer.cornerRadius = 10
        buttonDiminuir.layer.cornerRadius = 10
        labelQuantidadeTotal.text = ""
        imageViewCopoDagua.image = UIImage(named: "agua")
        viewQt.layer.cornerRadius = 10
    }

}

