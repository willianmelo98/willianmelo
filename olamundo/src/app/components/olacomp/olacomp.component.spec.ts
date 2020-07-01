import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OlacompComponent } from './olacomp.component';

describe('OlacompComponent', () => {
  let component: OlacompComponent;
  let fixture: ComponentFixture<OlacompComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OlacompComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OlacompComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
