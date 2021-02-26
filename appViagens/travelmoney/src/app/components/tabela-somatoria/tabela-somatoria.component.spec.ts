import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TabelaSomatoriaComponent } from './tabela-somatoria.component';

describe('TabelaSomatoriaComponent', () => {
  let component: TabelaSomatoriaComponent;
  let fixture: ComponentFixture<TabelaSomatoriaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TabelaSomatoriaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TabelaSomatoriaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
