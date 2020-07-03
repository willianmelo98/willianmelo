import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MenuLayoutComponent } from './componentes/menu-layout/menu-layout.component';
import { ImovelCardComponent } from './componentes/menu-layout/imovelCard/imovel-card/imovel-card.component';
import { PageCardComponent } from './componentes/menu-layout/PageCard/page-card/page-card.component';


const routes: Routes = [
   { path:'',
     component:MenuLayoutComponent,

     children:[{
       path:'',
       component:PageCardComponent

     }]
   }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
