import { Injectable } from '@angular/core';
import { AngularFirestore, AngularFirestoreCollection } from '@angular/fire/firestore';
import { Observable } from 'rxjs/internal/Observable';
import { Viagem } from '../model/viagem';

@Injectable({
  providedIn: 'root'
})
export class ViagemService {
  projectCol: AngularFirestoreCollection<Viagem>;

  constructor(private storage: AngularFirestore) {

    this.projectCol = storage.collection<Viagem>('viagem')
   }


   getAllProjects(): Observable<Viagem[]> {
    return this.storage.collection<Viagem>('viagem ', ref =>
      ref.orderBy('datePub', 'desc'))
      .valueChanges();
  }
}

