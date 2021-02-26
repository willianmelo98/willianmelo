import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { Viagem } from 'src/app/model/viagem';
import { ViagemService } from 'src/app/service/viagem.service';

@Component({
  selector: 'app-tabela-descritiva',
  templateUrl: './tabela-descritiva.component.html',
  styleUrls: ['./tabela-descritiva.component.css']
})
export class TabelaDescritivaComponent implements OnInit {

  constructor(public serviceViagem: ViagemService) { }


  imgCategoria: String = "/assets/restaurante.png";
  imgOrcamento: String = "/assets/orçamento.png";
  imgCard: String = "/assets/card.png";



  displayedColumns: string[] = ['item', 'preco'];
  viagem: Observable<Viagem[]>
  gasto: Viagem;
  item:string;



  addGasto() {
    this.viagens.push({ item: 'Beach ball', preco: 4, orcamento: 100, data: '10', uid: 'willian' })

  }




  getTotalCost() {
    return this.viagens.map(t => t.preco).reduce((acc, value) => acc + value, 0);
  }

  viagens: Viagem[] = [


  ]



  ngOnInit(): void {

    this.viagem = this.serviceViagem.getAllProjects();
    this.serviceViagem.getAllProjects().subscribe((lista) => {
      this.item = this.gasto.item

      this.viagens.push({ item: this.item, preco: 4, orcamento: 100, data: '10', uid: 'willian' })


    })
  }

}
