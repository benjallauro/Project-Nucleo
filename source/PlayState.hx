package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	private var bazz:Vehicle;
	private var testStandard:StandardObject;
	override public function create():Void
	{
		super.create();
		bazz = new Vehicle();
		add(bazz);
		testStandard = new StandardObject();
		add(testStandard);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}