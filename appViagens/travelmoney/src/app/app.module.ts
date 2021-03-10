import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { LayoutModule } from '@angular/cdk/layout';
import { MatButtonModule } from '@angular/material/button';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatListModule } from '@angular/material/list';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';
import { MatButtonToggleModule } from '@angular/material/button-toggle';





import { AppComponent } from './app.component';
import { LayoutComponent } from './layout/layout.component';



import { AngularFireModule } from "@angular/fire";
import { AngularFireAuthModule } from "@angular/fire/auth";
import { AngularFirestoreModule } from '@angular/fire/firestore';
import { AngularFireStorageModule } from '@angular/fire/storage';
import { environment } from '../environments/environment';
import { AddGastoComponent } from './components/addGastos/add-gasto/add-gasto.component';
import { AddViagemComponent } from './components/add-viagem/add-viagem.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { TabelaGastosComponent } from './components/tabela-gastos/tabela-gastos.component';
import { CardGastoComponent } from './components/tabela-gastos/card-gasto/card-gasto.component';
import { ServiceWorkerModule } from '@angular/service-worker';
import {MatExpansionModule} from '@angular/material/expansion';
import { EditarGastoComponent } from './components/tabela-gastos/card-gasto/editar-gasto/editar-gasto.component';
import {MatDialogModule} from '@angular/material/dialog';







@NgModule({
  declarations: [
    AppComponent,
    LayoutComponent,
    AddGastoComponent,
    AddViagemComponent,
    TabelaGastosComponent,
    CardGastoComponent,
    EditarGastoComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatIconModule,
    MatDialogModule,
    LayoutModule,
    MatButtonModule,
    MatSidenavModule,
    MatListModule,
    MatCardModule,
    MatTableModule,
    ReactiveFormsModule,
    MatExpansionModule,
    FormsModule,
    MatButtonToggleModule,
    AngularFireModule.initializeApp(environment.firebaseConfig),
    AngularFireAuthModule,
    AngularFirestoreModule,
    AngularFireStorageModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
