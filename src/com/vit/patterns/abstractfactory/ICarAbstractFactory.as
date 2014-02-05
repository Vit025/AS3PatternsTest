package com.vit.patterns.abstractfactory 
{
	import com.vit.patterns.ICar;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public interface ICarAbstractFactory 
	{
		
		function getMainCar():ICar;
		function getOffroadCar():ICar;
		
	}
	
}