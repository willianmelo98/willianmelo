import { TestBed } from '@angular/core/testing';

import { ImoveisAPIService } from './imoveis-api.service';

describe('ImoveisAPIService', () => {
  let service: ImoveisAPIService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ImoveisAPIService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
