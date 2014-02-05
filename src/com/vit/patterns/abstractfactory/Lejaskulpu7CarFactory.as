package com.vit.patterns.abstractfactory 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.MitsubishiPajeroHedgehog;
	import com.vit.patterns.MitsubishiPajeroWagon;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Lejaskulpu7CarFactory implements ICarAbstractFactory 
	{
		
		public function Lejaskulpu7CarFactory() 
		{
			
		}
		
		public function getMainCar():ICar
		{
			return new MitsubishiPajeroWagon();
		}
		
		public function getOffroadCar():ICar
		{
			return new MitsubishiPajeroHedgehog();
		}
	}

}