package com.vit.patterns.state 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class SimpleButtonOverSelectedState extends SimpleButtonState
	{
		
		public function SimpleButtonOverSelectedState(_target:Sprite) 
		{
			super(_target);
		}
		
		override public function display():void 
		{
			target.graphics.clear();
			target.graphics.beginFill(0x973c13);
			target.graphics.drawRect(0, 0, 250, 50);
			target.graphics.endFill();
		}
		
	}

}