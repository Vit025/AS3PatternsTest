package com.vit.patterns.adapter 
{
	import com.vit.patterns.CarView;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarAdapterView extends CarView
	{
		public function CarAdapterView() 
		{
			super();
		}
		
		override protected function clickHandler(e:MouseEvent):void 
		{
			switch(e.currentTarget)
			{
				case wagonBtn:
					setCarInfoByAdapter(new Lejaskulpu7MainCar());
				break;
				case hedgehogBtn:
					setCarInfoByAdapter(new Lejaskulpu7OffroadCar());
				break;
				default:
					trace("VF >>", this,":: clickHandler: WRONG BUTTON");
				break;
			}
		}
		
		private function setCarInfoByAdapter(car:Object):void 
		{
			setCarInfo(new LejaskulpuCarAdapter(car));
		}
		
	}

}