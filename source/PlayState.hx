package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxEase.EaseFunction;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxTween.TweenOptions;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import flixel.math.FlxPoint;
import haxe.EnumTools;



class PlayState extends FlxState
{
	override public function create()
	{
		var text = new FlxText(10, 10, 100, "339/25");
		text.screenCenter();
		text.setGraphicSize(Std.int(text.width * 5));
		FlxTween.tween(text, {y: 100}, 1.5, {type: FlxTweenType.PINGPONG, ease: FlxEase.quadInOut, loopDelay: 0.1});

		add(text);

		/*var evilTrail = new FlxTrail(text, null, 4, 24, 0.3, 0.069);
		add(evilTrail);*/

		var textTwo = new FlxText(10, 10, 100, "lol i tried on this i think");
		textTwo.screenCenter(X);
		textTwo.y += 600;
		textTwo.setGraphicSize(Std.int(text.width * 5));
		add(textTwo);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
