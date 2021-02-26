import { Component, NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { TabelaDescritivaComponent } from './components/tabela-descritiva/tabela-descritiva.component';
import { TabelaSomatoriaComponent } from './components/tabela-somatoria/tabela-somatoria.component';
import { LayoutComponent } from './layout/layout.component';

const routes: Routes = [
{
  path:'',
  component:LayoutComponent,
  children:[{

    path:'descritiva',
    component:TabelaDescritivaComponent,
  },
  {
    path:'soma',
    component:TabelaSomatoriaComponent
  }

  ]
}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {

}
