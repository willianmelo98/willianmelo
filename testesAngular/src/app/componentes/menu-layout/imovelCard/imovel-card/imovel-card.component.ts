import { Component, OnInit, Input, OnChanges } from '@angular/core';
import { ModelImoveis } from 'src/app/service/model-imoveis';


@Component({
  selector: 'app-imovel-card',
  templateUrl: './imovel-card.component.html',
  styleUrls: ['./imovel-card.component.css']
})
export class ImovelCardComponent implements OnChanges {

  @Input() imoveis:ModelImoveis;
  image:string;
  price:number;
  address:string;
  owner:string;
  type:string;


  constructor() { }

  ngOnChanges(): void {
    if(this.imoveis != null){
      this.image=this.imoveis.image;
      this.address= this.imoveis.address;
      this.owner= this.imoveis.owner;
      this.price = this.price;

    }

  }

}
