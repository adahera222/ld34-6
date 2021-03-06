import Const;

class Texts {

	public static var WELCOME = [
		"Dear Princess,\nYour Hero has been captured by the Evil, and your Kingdom has vanished.\n",
		"You only have left one wheat seed...\nWill that be enough to finish the game?",
	];
	
	public static var VICTORY = [
		"The Mighty Princess has defeated the Evil",
		"And she was able to rescue her Hero.",
		"",
		"Due to long days spend in prison he had lost some weight",
		"The Princess was quite happy about that",
		"",
		"She spent the rest of her life living happy",
		"With her Hero",
		"",
		"She only had one from the beginning",
		"",
		"Her only love",
		"",
		"",
		"",
		"",
		"",
		"Fin",
	];
	
	public static function BUILDPOS(b:BuildingKind) {
		return switch( b ) {
		case BFarmer: [21, 8, 3, 2, 21, 8, 2, 2];
		case BWheat: [20, 10, 3, 3, 20, 10, 3, 3];
		case BTavern: [7, 2, 6, 2, 8, 2, 4, 2];
		case BTower: [4, 10, 2, 4, 4, 10, 2, 4];
		case BDungeon: [14, 13, 4, 2, 15, 13, 2, 2];
		case BBuilder: [14, 6, 2, 2, 14, 6, 2, 2];
		case BWoodCutter: [16, 1, 4, 2, 16, 1, 3, 2];
		case BMiner: [1, 15, 2, 2, 1, 15, 2, 2];
		case BShop: [18, 4, 4, 2, 19, 4, 2, 2];
		case BCastle: [9, 6, 5, 4, 9, 6, 3, 4];
		case BAcademy: [0, 1, 7, 3, 1, 1, 4, 3];
		case BStables: [0, 8, 3, 2, 0, 8, 3, 2];
		case BFisher: [19, 14, 2, 3, 19, 14, 2, 2];
		}
	}
	
	public static function ITEMNAME(i:Item) {
		return switch( i ) {
		case Seed: "Seed";
		case Wheat: "Wheat";
		case Beer: "Beer";
		case Soldier: "Soldier";
		case Gold: "Gold";
		case Wood: "Wood";
		case Ore: "Ore";
		case Diamond: "Diamond";
		case Hp: "HP+";
		case Sword: "Att+";
		case Shield:" Def+";
		case Plow: "Farm Plow";
		case Horse: "Horse";
		case Knight: "Knight";
		case Shoes: "Shoes";
		case Unknown: "???";
		case Fish: "Fish";
		case Cucumber: "Cucumber";
		case Amulet: "Pendant";
		}
	}
	
	public static function BUILDNAME(i:BuildingKind) {
		return switch( i  ) {
		case BFarmer: "Farm";
		case BWheat: "Wheat Field";
		case BTavern: "Tavern";
		case BTower: "Guards Tower";
		case BDungeon: "Dungeon";
		case BBuilder: "Builder";
		case BWoodCutter: "Lumbermill";
		case BMiner: "Mine";
		case BShop: "Shop";
		case BCastle: "Princess Castle";
		case BAcademy: "Academy";
		case BStables: "Stables";
		case BFisher: "Fisherman";
		}
	}
	
}