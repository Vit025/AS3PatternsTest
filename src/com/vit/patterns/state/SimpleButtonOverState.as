package com.vit.patterns.state 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class SimpleButtonOverState extends SimpleButtonState
	{
		
		public function SimpleButtonOverState(_target:Sprite) 
		{
			super(_target);
		}
		
		override public function display():void 
		{
			target.graphics.clear();
			target.graphics.beginFill(0xf0be41);
			target.graphics.drawRect(0, 0, 250, 50);
			target.graphics.endFill();
		}
		
	}

}