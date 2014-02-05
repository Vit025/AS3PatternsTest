package com.vit.patterns.adapter 
{
	import com.vit.patterns.ICar;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Lejaskulpu7MainCar
	{
		
		public function Lejaskulpu7MainCar() 
		{
			
		}
		
		public function init():void
		{
			trace("VF >>", this, "initalized");
		}
		
		public function carMake():String
		{
			return "Mitsubishi";
		}
		
		public function carModel():String
		{
			return "Pajero";
		}
		
		public function carMileage():int
		{
			return 87800;
		}
		
		public function carColor():String
		{
			return "Champagne";
		}
		
		public function carYear():int
		{
			return 2009;
		}
		
	}

}