import { Component, OnInit } from '@angular/core';
import { Hero } from '../heroes/interfaceHeroi';
import { HEROES } from '../heroes/mock-heroes';

@Component({
  selector: 'app-heroes',
  templateUrl: './heroes.component.html',
  styleUrls: ['./heroes.component.css']
})
export class HeroesComponent implements OnInit {

  constructor() { }
    heroes = HEROES;

  hero:Hero = {
    id:1,
    name:" Willian Melo"
  }

  selectedHero: Hero;
onSelect(hero: Hero): void {
  this.selectedHero = hero;
}

  ngOnInit(): void {
  }

}
