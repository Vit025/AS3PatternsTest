package com.vit.patterns.strategy 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.MitsubishiPajeroHedgehog;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarList 
	{
		
		private var carInfo:ICar;
		
		public function CarList() 
		{
			carInfo = new MitsubishiPajeroHedgehog();
		}
		
		public function init():void
		{
			carInfo.init();
		}
		
		public function make():String
		{
			return carInfo.make();
		}
		
		public function model():String
		{
			return carInfo.model();
		}
		
		public function mileage():int
		{
			return carInfo.mileage();
		}
		
		public function color():String
		{
			return carInfo.color();
		}
		
		public function year():int
		{
			return carInfo.year();
		}
		
		public function setCurrentCar(currentCar:ICar):void
		{
			carInfo = currentCar;
			init();
		}
		
	}

}