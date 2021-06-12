import { Component, OnInit } from '@angular/core';
import { Cliente } from '../models/cliente';
import { ClienteService } from '../../services/clientes/cliente.service';


@Component({
  selector: 'app-clientes',
  templateUrl: './clientes.component.html',
  styleUrls: ['./clientes.component.css']
})
export class ClientesComponent implements OnInit {

  clientes: Cliente[];

  constructor(private clienteServ: ClienteService) { }

  ngOnInit(): void {
    this.clienteServ.getClientes().subscribe(
      clientes => {
        this.clientes = clientes
        console.log(this.clientes);
      });
  }

}
