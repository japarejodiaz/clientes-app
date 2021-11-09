import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DirectivaComponent } from './components/directiva/directiva.component';
import { ClientesComponent } from "./components/clientes/clientes.component";
import { FormComponent } from './clientes/form/form.component';

const routes: Routes = [
    { path:'directiva', component: DirectivaComponent },
    { path:'clientes', component: ClientesComponent },
    { path: 'clientes/form', component: FormComponent },
    { path: 'clientes/form/:id', component: FormComponent },
    { path:'**', redirectTo: '/clientes', pathMatch: 'full' }
];



@NgModule({
  declarations: [],
  imports: [
    RouterModule.forRoot(routes, { useHash: true })
  ]
})
export class AppRoutingModule { }
