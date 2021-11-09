import { Component, OnInit } from '@angular/core';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-directiva',
  templateUrl: './directiva.component.html',
  styles: [
  ]
})
export class DirectivaComponent implements OnInit {

  listacurso: string[] = ['JavaScript', 'Java SE', 'TypeScript', 'C#', 'PHP'];
  habilitar: boolean = true;

  constructor() { }

  ngOnInit(): void {
  }

  setHabilitar(): void {
    console.log(this.habilitar);

    this.habilitar = (this.habilitar==true)? false: true;

    console.log(this.habilitar);


    Swal.fire({
      title: 'Error!',
      text: 'Do you want to continue',
      icon: 'error',
      confirmButtonText: 'Cool'
    })
  }

}
