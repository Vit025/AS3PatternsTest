package com.vit.patterns.abstractfactory 
{
	import com.vit.patterns.CarView;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarAbstractFactoryView extends CarView
	{
		private var leyaskulpuBtn:Sprite;
		private var palienasBtn:Sprite;
		private var carTypeBtn:Sprite;
		private var isOffroad:Boolean = false;
		
		public function CarAbstractFactoryView() 
		{
			super();
		}
		
		override protected function createButtons():void 
		{
			leyaskulpuBtn = createBtn("Lejaskulpu 7", 200, 50);
			leyaskulpuBtn.x = 400;
			leyaskulpuBtn.y = 50;
			addChild(leyaskulpuBtn);
			
			palienasBtn = createBtn("Palienas 2", 200, 50);
			palienasBtn.x = 400;
			palienasBtn.y = 120;
			addChild(palienasBtn);
			
			carTypeBtn = createBtn("Offroad Car", 200, 50);
			carTypeBtn.x = 400;
			carTypeBtn.y = 190;
			addChild(carTypeBtn);
		}
		
		override protected function clickHandler(e:MouseEvent):void 
		{
			switch(e.currentTarget)
			{
				case leyaskulpuBtn:
					setCarInfoByFactory(new Lejaskulpu7CarFactory());
				break;
				case palienasBtn:
					setCarInfoByFactory(new Palienas2CarFactory());
				break;
				case carTypeBtn:
					isOffroad = !isOffroad;
					carTypeBtn.graphics.beginFill(isOffroad? 0xd9242a:0x92a0a7);
					carTypeBtn.graphics.drawRect(0, 0, carTypeBtn.width, carTypeBtn.height);
					carTypeBtn.graphics.endFill();
				break;
				default:
					trace("VF >>", this,":: clickHandler: WRONG BUTTON");
				break;
			}
		}
		
		private function setCarInfoByFactory(factory:ICarAbstractFactory):void 
		{
			setCarInfo(isOffroad? factory.getOffroadCar():factory.getMainCar());
		}
		
	}

}