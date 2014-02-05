package com.vit.patterns.state 
{
	import flash.display.Sprite;
	import flash.errors.IllegalOperationError;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	internal class SimpleButtonState implements ISimpleButtonState
	{
		protected var target:Sprite;
		
		public function SimpleButtonState(_target:Sprite) 
		{
			target = _target;
		}
		
		public function display():void
		{
			throw new IllegalOperationError("display method not supported. Override it!");
		}
		
		public function dispose():void {
			target = null;
		}
		
	}

}