import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-olacomp',
  templateUrl: './olacomp.component.html',
  styleUrls: ['./olacomp.component.css']
})
export class OlacompComponent implements OnInit {

   titulo: string ='Ola minha nova componente ';
   dados:string;
   imgUrl:string='/assets/mansão.jpg';
   mostrarImagem = true;


  constructor() { }

  ngOnInit(): void {
  }

  executar():void{
    this.dados =this.titulo;
  }

}
