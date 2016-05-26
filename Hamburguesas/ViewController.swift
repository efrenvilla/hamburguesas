//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Efrén Villanueva on 26/5/16.
//  Copyright © 2016 Efrén Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    @IBOutlet weak var precio: UILabel!
    
    let unPais = coleccionDePaises()
    let unaHamburguesa = coleccionDeHamburguesas()
    let unPrecio = Precio()
    let colores = Colores()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func dameUnaHamburguesa() {
        pais.text = unPais.obtenPais()
        hamburguesa.text = unaHamburguesa.obtenHamburguesa()
        let colorAleatorio = colores.regresaColorAleatorio()
        precio.text = "\(unPrecio.dameUnPrecio())" + " euros"
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
    

}

