import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ImovelModel } from './imovel-model';

@Injectable({
  providedIn: 'root'
})
export class ImoveisAPIService {

  constructor(private httpClient: HttpClient) { }

  public list(): Observable<ImovelModel[]>{
    return this.httpClient.get<ImovelModel[]>('https://it3imoveis.firebaseio.com/vendas.json');
  }


}
