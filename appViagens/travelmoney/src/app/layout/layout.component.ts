import { Component, OnInit } from '@angular/core';
import { BreakpointObserver, Breakpoints } from '@angular/cdk/layout';
import { Observable } from 'rxjs';
import { map, shareReplay } from 'rxjs/operators';
import { GastoService } from '../service/gasto.service';
import { Gasto } from '../model/gasto';
import { ViagemService } from '../service/viagem.service';
import { Viagem } from '../model/viagem';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.css']
})
export class LayoutComponent implements OnInit {

  viagem: Observable<Viagem[]>
  messages: string;


  isHandset$: Observable<boolean> = this.breakpointObserver.observe(Breakpoints.Handset)
    .pipe(
      map(result => result.matches),
      shareReplay()
    );

  constructor(private breakpointObserver: BreakpointObserver, public serviceViagem: ViagemService,public serviceGasto: GastoService, ) {}

  ngOnInit(): void{
    this.viagem = this.serviceViagem.getAllViagens();
  }

  atualizaTabela(viagem){
      this.serviceViagem.setViagem(viagem);
    }


  deletarViagem(item: Viagem) {
    this.serviceViagem.delete(item)
      .then(() => {
        this.messages = `Viagem Excluída com sucesso !`;

      })
      .catch((erro) => { this.messages = `Erro ao excluir o projeto: ${erro}` })

  }

}
