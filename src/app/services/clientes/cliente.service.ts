import { Injectable } from '@angular/core';
// import { CLIENTES } from '../../../assets/json/clientes.json';
import { Cliente } from '../../components/models/cliente';
import { Observable } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {
  private urlEndPoint: string = 'http://localhost:8080/api/clientes';
  private httpHeader = new HttpHeaders({'Content-Type':'application/json'});

  constructor(private http: HttpClient) { }

  getClientes(): Observable<Cliente[]> {
    // return of(CLIENTES);
    return this.http.get(this.urlEndPoint).pipe(
      map((response) => response as Cliente[])
    );
  }

  createClientes(cliente: Cliente): Observable<Cliente> {
    return this.http.post<Cliente>(this.urlEndPoint, cliente, { headers: this.httpHeader });

  }

  getcliente(id: any):  Observable<Cliente>{

    return this.http.get<Cliente>(`${this.urlEndPoint}/${id}`);
  }

  updateclientes(cliente: Cliente):  Observable<Cliente>{

    return this.http.put<Cliente>(`${this.urlEndPoint}/${cliente.id}`, cliente, { headers: this.httpHeader });
  }


}
