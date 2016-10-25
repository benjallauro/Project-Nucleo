package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;


 class StandardObject extends FlxSprite
	 {	var xPosition:Int; 
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(25, 25, FlxColor.BLUE);
		velocity.y = 25;
		xPosition = FlxG.random.int(0,4);
		switch (xPosition)
		{
			case 0:
				x = 120;
			case 1:
				x =  ((FlxG.width - width) / 2);
			case 2:
				x = (FlxG.width - width) / 2;
			case 3:
				x = ((((FlxG.width - width) / 2) + (((FlxG.width - width) / 2)) / 2));
			case 4:
				x = ((((FlxG.width - width) / 2) + (((FlxG.width - width) / 2)) / 2)) / 2;
			default:
				x = (FlxG.width - width) / 2;
		}
	}
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
}