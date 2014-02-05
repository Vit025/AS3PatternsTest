package com.vit.patterns.facade 
{
	import com.vit.patterns.strategy.CarListView;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarListViewFacade extends CarListView 
	{
		
		public function CarListViewFacade() 
		{
			super();
		}
		
		/**
		 * Changes text color of result and return it
		 * @return
		 */
		override protected function createInfoTextField():TextField 
		{
			trace("VF >>", this,":: createInfoTextField:");
			var result:TextField = super.createInfoTextField();
			result.textColor = 0xdf8500;
			return result;
		}
		
	}

}