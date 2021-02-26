import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TabelaDescritivaComponent } from './tabela-descritiva.component';

describe('TabelaDescritivaComponent', () => {
  let component: TabelaDescritivaComponent;
  let fixture: ComponentFixture<TabelaDescritivaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TabelaDescritivaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TabelaDescritivaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
