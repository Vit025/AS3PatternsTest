package com.vit.patterns.factorymethod 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.MitsubishiPajeroHedgehog;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class MitsubishiPajeroHedgehogFactory implements ICarFactory
	{
		
		public function getCar():ICar
		{
			return new MitsubishiPajeroHedgehog();
		}
		
	}

}