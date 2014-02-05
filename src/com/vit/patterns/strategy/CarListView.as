package com.vit.patterns.strategy 
{
	import com.vit.patterns.CarView;
	import com.vit.patterns.ICar;
	import com.vit.patterns.MitsubishiPajeroHedgehog;
	import com.vit.patterns.MitsubishiPajeroWagon;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarListView extends CarView
	{
		
		public function CarListView() 
		{
			super();
		}
		
		override protected function clickHandler(e:MouseEvent):void 
		{
			switch(e.currentTarget)
			{
				case wagonBtn:
					setCarInfo(new MitsubishiPajeroWagon());
				break;
				case hedgehogBtn:
					setCarInfo(new MitsubishiPajeroHedgehog());
				break;
				default:
					trace("VF >>", this,":: clickHandler: WRONG BUTTON");
				break;
			}
		}
		
	}

}