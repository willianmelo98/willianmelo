import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MenuPageLayoutComponent } from './components/menu-page-layout/menu-page-layout.component';
import { ImovelCardComponent } from './components/imovelCard/imovel-card/imovel-card.component';
import { OlacompComponent } from './components/olacomp/olacomp.component';


const routes: Routes = [

  {
    path:'',
    component:MenuPageLayoutComponent,

    children:[

     {
       path:'',
       component:ImovelCardComponent
      },

      {
         path:'exemplo',
         component:OlacompComponent
       }


    ]


  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
