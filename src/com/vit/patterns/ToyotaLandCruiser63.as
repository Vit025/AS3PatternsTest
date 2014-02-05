package com.vit.patterns 
{
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class ToyotaLandCruiser63 implements ICar 
	{
		
		public function ToyotaLandCruiser63() 
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
			return "Land Crusier 63";
		}
		
		public function mileage():int
		{
			return 218300;
		}
		
		public function color():String
		{
			return "Dark Green";
		}
		
		public function year():int
		{
			return 1996;
		}
		
	}

}