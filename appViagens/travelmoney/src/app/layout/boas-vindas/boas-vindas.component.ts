import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { Viagem } from 'src/app/model/viagem';
import { ViagemService } from 'src/app/service/viagem.service';

@Component({
  selector: 'app-boas-vindas',
  templateUrl: './boas-vindas.component.html',
  styleUrls: ['./boas-vindas.component.css']
})
export class BoasVindasComponent implements OnInit {
  viagem: Observable<Viagem[]>

  constructor(public serviceViagem: ViagemService) { }

  ngOnInit(): void {
    this.viagem = this.serviceViagem.getAllViagens();

  }


}
