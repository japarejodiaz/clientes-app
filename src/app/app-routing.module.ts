import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DirectivaComponent } from './components/directiva/directiva.component';
import { ClientesComponent } from "./components/clientes/clientes.component";

const routes: Routes = [
    { path:'directiva', component: DirectivaComponent },
    { path:'clientes', component: ClientesComponent },
    { path:'**', redirectTo: '/clientes', pathMatch: 'full' }
];



@NgModule({
  declarations: [],
  imports: [
    RouterModule.forRoot(routes, { useHash: true })
  ]
})
export class AppRoutingModule { }
