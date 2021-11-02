import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.text.FlxText;


class MenuState extends FlxState
{
	override public function create()
	{
		var playButton:FlxButton;
		playButton = new FlxButton(0, 0, "REVEAL", clickPlay);
		playButton.screenCenter();
		playButton.setGraphicSize(Std.int(playButton.width * 2));
		add(playButton);

		var text = new FlxText(0, 250, 0, "THE ANSWER IS...");
		text.screenCenter(X);
		text.setGraphicSize(Std.int(text.width * 5));
		add(text);
		

	}

	function clickPlay()
	{
		FlxG.switchState(new PlayState());
	}	
}	


