package com.vit.patterns.abstractfactory 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.ToyotaLandCruiser120;
	import com.vit.patterns.ToyotaLandCruiser63;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Palienas2CarFactory implements ICarAbstractFactory 
	{
		
		public function Palienas2CarFactory() 
		{
			
		}
		
		public function getMainCar():ICar
		{
			return new ToyotaLandCruiser120();
		}
		
		public function getOffroadCar():ICar
		{
			return new ToyotaLandCruiser63();
		}
		
	}

}