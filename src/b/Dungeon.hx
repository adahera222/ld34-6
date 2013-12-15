package b;
import Const;

class Dungeon extends Building {

	var level : Int;
	var soldiers : Int;

	public function new()
	{
		super(BDungeon);
		level = 1;
	}

	override function getTexts() {
		return [
			"A dark place that only brave soldiers will enter.\nFight monsters and earn gold there!",
			"Monsters are awaiting for your next sacrifice",
			"You can hear screams. Human ones.",
		];
	}
	
	
	override function getActions() : Array<Building.Action> {
		var progress = soldiers / level;
		var actions = new Array<Building.Action>();
		actions.push({
			item : Soldier,
			text : "Level "+level+(progress == 0 ? "" : " "+Std.int(progress*100)+"%"),
			enable : game.has.bind(Soldier),
			callb : function() {
				game.use(Soldier);
				start(15, function() {
					soldiers++;
					if( soldiers == level ) {
						level++;
						soldiers = 0;
						unlock(BCastle);
					}
				});
				if( !game.buildings.exists(BCastle) ) unlock(BCastle);
			},
		});
		// tease
		actions.push({
			item : Knight,
			text : "Level "+level+(progress == 0 ? "" : " "+Std.int(progress*100)+"%"),
			enable : game.has.bind(Knight),
			callb : function() {
				game.use(Knight);
				start(15, function() {
					soldiers += 2;
					if( soldiers >= level ) {
						level++;
						soldiers -= level;
						unlock(BCastle);
					}
				});
			},
		});
		return actions;
	}
	
}