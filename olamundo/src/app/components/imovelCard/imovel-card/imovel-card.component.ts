import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-imovel-card',
  templateUrl: './imovel-card.component.html',
  styleUrls: ['./imovel-card.component.css']
})
export class ImovelCardComponent implements OnInit {
  imgImoveis:string = "/assets/mansão.jpg";
  price=5000000;
  address = 'Cabo Frio - RJ';
  owner ='Willian Melo';
  type = 'Venda';

  constructor() { }

  ngOnInit(): void {
  }


}
