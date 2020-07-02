import { Component, OnInit } from '@angular/core';
import{ImovelModel} from 'src/app/services/imoveis-api/imovel-model';
import{ImoveisAPIService} from 'src/app/services/imoveis-api/imoveis-api.service';

@Component({
  selector: 'app-imovel-page',
  templateUrl: './imovel-page.component.html',
  styleUrls: ['./imovel-page.component.css']
})
export class ImovelPageComponent implements OnInit {

  listaImoveis: ImovelModel[];

  constructor( private imoveisApi:ImoveisAPIService) { }

  ngOnInit(): void {
   this.imoveisApi.List().subscribe((lista) => {
    this.listaImoveis = lista;

   })


   }

  }


