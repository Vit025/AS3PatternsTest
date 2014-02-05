package com.vit.patterns.factorymethod 
{
	import com.vit.patterns.CarView;
	import com.vit.patterns.ICar;
	import com.vit.patterns.strategy.CarList;
	import com.vit.patterns.strategy.CarListView;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarFactoryMethodView extends CarView 
	{
		public function CarFactoryMethodView() 
		{
			super();
		}
		
		override protected function clickHandler(e:MouseEvent):void 
		{
			switch(e.currentTarget)
			{
				case wagonBtn:
					setCarInfoByFactory(new MitsubishiPajeroWagonFactory());
				break;
				case hedgehogBtn:
					setCarInfoByFactory(new MitsubishiPajeroHedgehogFactory());
				break;
				default:
					trace("VF >>", this,":: clickHandler: WRONG BUTTON");
				break;
			}
		}
		
		private function setCarInfoByFactory(factory:ICarFactory):void 
		{
			setCarInfo(factory.getCar());
		}
		
	}

}