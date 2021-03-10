import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddGastoComponent } from './add-gasto.component';

describe('AddGastoComponent', () => {
  let component: AddGastoComponent;
  let fixture: ComponentFixture<AddGastoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddGastoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddGastoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
