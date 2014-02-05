package com.vit.patterns 
{
	import com.vit.patterns.ICar;
	import com.vit.patterns.strategy.CarList;
	import flash.display.Sprite;
	import flash.errors.IllegalOperationError;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class CarView extends Sprite 
	{
		protected var info:TextField;
		protected var carData:CarList;
		protected var hedgehogBtn:Sprite;
		protected var wagonBtn:Sprite;
		
		public function CarView() 
		{
			carData = new CarList();
			
			info = createInfoTextField();
			addChild(info);
			
			createButtons();
		}
		
		protected function createButtons():void 
		{
			hedgehogBtn = createBtn("Mitshubishi Pajero Hedgehog", 200, 50);
			hedgehogBtn.x = 400;
			hedgehogBtn.y = 50;
			addChild(hedgehogBtn);
			
			wagonBtn = createBtn("Mitshubishi Pajero Wagon", 200, 50);
			wagonBtn.x = 400;
			wagonBtn.y = 120;
			addChild(wagonBtn);
		}
		
		protected function createInfoTextField():TextField
		{
			var result:TextField = new TextField();
			result.autoSize = TextFieldAutoSize.NONE;
			result.multiline = true;
			result.wordWrap = true;
			result.x = 50;
			result.y = 50;
			result.width = 300;
			result.height = 300;
			return result;
		}
		
		protected function createBtn(_label:String, _width:Number, _height:Number):Sprite 
		{
			var result:Sprite = new Sprite;
			result.graphics.clear();
			result.graphics.beginFill(0x92a0a7);
			result.graphics.drawRect(0, 0, _width, _height);
			result.graphics.endFill();
			
			var label:TextField = new TextField();
			label.autoSize = TextFieldAutoSize.LEFT;
			label.text = _label;
			
			var _n:Number = (_width - label.width) >> 1;
			label.x = (_n > 0)? (_n + .5) >> 0 : (_n - .5) >> 0;
			
			_n = (_height - label.height) >> 1;
			label.y = (_n > 0)? (_n + .5) >> 0 : (_n - .5) >> 0;
			
			result.addChild(label);
			result.mouseChildren = false;
			result.buttonMode = true;
			result.useHandCursor = true;
			
			result.addEventListener(MouseEvent.CLICK, clickHandler);
			
			result.name = _label;
			
			return result;
		}
		
		protected function clickHandler(e:MouseEvent):void 
		{
			throw new IllegalOperationError("clickHandler not supported. Override it!");
		}
		
		protected function setCarInfo(data:ICar):void 
		{
			carData.setCurrentCar(data);
			info.text = carData.make() + " " + carData.model() +
					"\nYear: " + carData.year() +
					"\nColor: " + carData.color() +
					"\nMileage: " + carData.mileage() + "km";
		}
		
	}

}