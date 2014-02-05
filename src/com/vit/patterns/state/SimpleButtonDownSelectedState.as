package com.vit.patterns.state 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class SimpleButtonDownSelectedState extends SimpleButtonState
	{
		
		public function SimpleButtonDownSelectedState(_target:Sprite) 
		{
			super(_target);
		}
		
		override public function display():void 
		{
			target.graphics.clear();
			target.graphics.beginFill(0xbf550d);
			target.graphics.drawRect(0, 0, 250, 50);
			target.graphics.endFill();
		}
		
	}

}