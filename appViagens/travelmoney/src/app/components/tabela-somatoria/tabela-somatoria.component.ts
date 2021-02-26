import { Component, OnInit } from '@angular/core';
import {  Viagem } from 'src/app/model/viagem';

@Component({
  selector: 'app-tabela-somatoria',
  templateUrl: './tabela-somatoria.component.html',
  styleUrls: ['./tabela-somatoria.component.css']
})
export class TabelaSomatoriaComponent implements OnInit {

  constructor() { }



  displayedColumns: string[] = ['item', 'preco'];
  viagens: Viagem[] = [
    {item: 'Beach ball', preco: 4, orcamento:100,data:'10',uid:'willian'},


  ]


    getTotalCost() {
      return this.viagens.map(t => t.preco).reduce((acc, value) => acc + value, 0);
    }



  ngOnInit(): void {
  }

}
