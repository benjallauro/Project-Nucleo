package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;


class Vehicle extends FlxSprite
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(45, 25, FlxColor.GREEN);
		x = (FlxG.width - width)/2;
		y = 450;
	}
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	if (FlxG.keys.justPressed.LEFT && x >= 150)
			x -= 150;
		if (FlxG.keys.justPressed.RIGHT && x < 600 - width)
			x += 150;
	}
	
}