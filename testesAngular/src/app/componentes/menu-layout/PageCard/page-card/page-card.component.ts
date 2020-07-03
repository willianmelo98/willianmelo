import { Component, OnInit } from '@angular/core';
import {ApiImoveisService } from 'src/app/service/api-imoveis.service';
import { ModelImoveis } from 'src/app/service/model-imoveis';
@Component({
  selector: 'app-page-card',
  templateUrl: './page-card.component.html',
  styleUrls: ['./page-card.component.css']
})
export class PageCardComponent implements OnInit {
  listaImoveis:ModelImoveis[];

  constructor( private apiService:ApiImoveisService) { }


  ngOnInit(): void {

    this.apiService.Lista().subscribe((lista) => {
           this.listaImoveis=lista;
    })


  }

}
