package com.vit.patterns.adapter 
{
	import com.vit.patterns.ICar;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class LejaskulpuCarAdapter implements ICar 
	{
		private var car:Object;
		
		public function LejaskulpuCarAdapter(carData:Object) 
		{
			car = carData;
		}
		
		public function init():void
		{
			trace("VF >>", this, "initalized");
		}
		
		public function make():String
		{
			if ("carMake" in car)
			{
				return car["carMake"]();
			}
			return "Undefined";
		}
		
		public function model():String
		{
			if ("carModel" in car)
			{
				return car["carModel"]();
			}
			return "Undefined";
		}
		
		public function mileage():int
		{
			if ("carMileage" in car)
			{
				return car["carMileage"]();
			}
			return -1;
		}
		
		public function color():String
		{
			if ("carColor" in car)
			{
				return car["carColor"]();
			}
			return "Undefined";
		}
		
		public function year():int
		{
			if ("carYear" in car)
			{
				return car["carYear"]();
			}
			return 0;
		}
		
	}

}