package com.vit.patterns 
{
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class ToyotaLandCruiser120 implements ICar 
	{
		
		public function ToyotaLandCruiser120() 
		{

		}
		
		public function init():void
		{
			trace("VF >>", this, "initalized");
		}
		
		public function make():String
		{
			return "Toyota";
		}
		
		public function model():String
		{
			return "Land Crusier 120";
		}
		
		public function mileage():int
		{
			return 125700;
		}
		
		public function color():String
		{
			return "Grey";
		}
		
		public function year():int
		{
			return 2008;
		}
		
	}

}