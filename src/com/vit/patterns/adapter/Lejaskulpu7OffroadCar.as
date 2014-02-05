package com.vit.patterns.adapter 
{
	import com.vit.patterns.ICar;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Lejaskulpu7OffroadCar
	{
		
		public function Lejaskulpu7OffroadCar() 
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
			return 189400;
		}
		
		public function carColor():String
		{
			return "Dark Blue";
		}
		
		public function carYear():int
		{
			return 1995;
		}
		
	}

}