package com.vit.patterns.state 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class SimpleButtonSelectedState extends SimpleButtonState
	{
		
		public function SimpleButtonSelectedState(_target:Sprite) 
		{
			super(_target);
		}
		
		override public function display():void 
		{
			target.graphics.clear();
			target.graphics.beginFill(0xd14b37);
			target.graphics.drawRect(0, 0, 250, 50);
			target.graphics.endFill();
		}
		
	}

}