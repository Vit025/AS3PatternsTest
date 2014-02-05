package com.vit.patterns.factorymethod 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.MitsubishiPajeroWagon;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	
	public class MitsubishiPajeroWagonFactory implements ICarFactory
	{
		
		public function getCar():ICar
		{
			return new MitsubishiPajeroWagon();
		}
		
	}

}