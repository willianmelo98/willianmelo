import { Component, OnInit, OnChanges, Input } from '@angular/core';
import { ImoveisAPIService } from 'src/app/services/imoveis-api/imoveis-api.service';
import { ImovelModel } from 'src/app/services/imoveis-api/imovel-model';

@Component({
  selector: 'app-imovel-card',
  templateUrl: './imovel-card.component.html',
  styleUrls: ['./imovel-card.component.css']
})
export class ImovelCardComponent implements OnChanges {


 @Input() imovel: ImovelModel;

  image:string;
  price:number;
  address:string;
  owner:string;
  type:string;

  constructor() { }

  ngOnChanges(): void {
    if(this.imovel !=null){

         this.image = this.imovel.image;
         this.price = this.imovel.price;
         this.address = this.imovel.address;
         this.owner = this.imovel.owner;
         this.type = this.imovel.type;

    }
  }


}
