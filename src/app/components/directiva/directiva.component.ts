import { Component, OnInit } from '@angular/core';

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
    this.habilitar = (this.habilitar==true)? false: true;
  }

}
