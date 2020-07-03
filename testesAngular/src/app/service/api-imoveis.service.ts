import { Injectable } from '@angular/core';
import { ModelImoveis } from './model-imoveis';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class ApiImoveisService {

  constructor( private httpClient:HttpClient) {

   }

   public Lista(): Observable<ModelImoveis[]>{
    return this.httpClient.get<ModelImoveis[]>('https://it3imoveis.firebaseio.com/vendas.json?print=pretty')

   }



}
