class CodexController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @links = [
      { path: 'character_data', image: 'characterData.jpg', title: 'Character Data' },
      { path: 'codex_classes', image: 'classes.jpg', title: 'Classes' },
      { path: 'equipment', image: 'equipment.jpg', title: 'Equipment' },
      { path: 'feat', image: 'feats.jpg', title: 'Feats' },
      { path: 'feature', image: 'features.jpg', title: 'Features'},
      { path: 'game_mechanics', image: 'gameMechanics.jpg', title: 'Game Mechanics' },
      { path: 'monster', image: 'monsters.jpg', title: 'Monsters' },
      { path: 'codex_races', image: 'races.jpg', title: 'Races' },
      { path: 'rule', image: 'rules.jpg', title: 'Rules' },
      { path: 'spell', image: 'spells.jpg', title: 'Spells' },
      { path: 'subclass', image: 'subClasses.jpg', title: 'Subclasses' },
      { path: 'subrace', image: 'subRaces.jpg', title: 'Subraces' },
      { path: 'trait', image: 'traits.jpg', title: 'Traits' } 
    ]
  end
end
