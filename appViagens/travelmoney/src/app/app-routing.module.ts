import {  NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AddViagemComponent } from './components/add-viagem/add-viagem.component';
import { AddGastoComponent } from './components/addGastos/add-gasto/add-gasto.component';
import { TabelaGastosComponent } from './components/tabela-gastos/tabela-gastos.component';
import { LayoutComponent } from './layout/layout.component';

const routes: Routes = [
  {
    path: '',
    component: LayoutComponent,
    children: [
     {
      path:'add',
      component:AddViagemComponent
    },
    {
      path:'addGasto/:idviagem/:lugar',
      component:AddGastoComponent
    },
    {
      path:'gastos/:id',
      component:TabelaGastosComponent
    },

  ]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {

}
