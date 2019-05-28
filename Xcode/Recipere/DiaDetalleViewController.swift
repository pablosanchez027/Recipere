//
//  DiaDetalleViewController.swift
//  Recipere
//
//  Created by Alumno on 5/28/19.
//  Copyright © 2019 Pablo. All rights reserved.
//

import Foundation
import UIKit

class DiaDetalleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbMedicinas: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellMedicina") as! celdaMedicina
        
        
        
        celda.lblMedicinaDia.font = UIFont(name: "Rubik", size: 19)
        celda.lblMedicinaDosis.font = UIFont(name: "Rubik", size: 19)
        celda.lblMedicinaHora.font = UIFont(name: "Rubik", size: 19)
        celda.lblMedicinaNombre.font = UIFont(name: "Rubik Medium", size: 27)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 90 //Medicinas por el día
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 255
    }
    
    
}
