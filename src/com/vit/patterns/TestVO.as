package com.vit.patterns 
{
	import flash.utils.getQualifiedClassName;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class TestVO 
	{
		
		public var ViewClass:Class;
		public var label:String;
		
		public function TestVO(_viewClass:Class, _label:String = null) 
		{
			ViewClass = _viewClass;
			
			if (_label == null)
			{
				label = getQualifiedClassName(_viewClass).split("::")[1];
			}
			else
			{
				label = _label;
			}
		}
		
	}

}