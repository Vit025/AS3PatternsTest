package 
{
	import com.vit.patterns.abstractfactory.CarAbstractFactoryView;
	import com.vit.patterns.adapter.CarAdapterView;
	import com.vit.patterns.decorator.CarListViewDecorator;
	import com.vit.patterns.factorymethod.CarFactoryMethodView;
	import com.vit.patterns.strategy.CarListView;
	import com.vit.patterns.TestButton;
	import com.vit.patterns.TestVO;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class Main extends Sprite 
	{
		
		private var selectedBtn:TestButton;
		private var container:Sprite;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var voCollection:Vector.<TestVO> = Vector.<TestVO>
					([
						new TestVO(CarListView, "Strategy"),
						new TestVO(CarFactoryMethodView, "Factory Method"),
						new TestVO(CarAbstractFactoryView, "Abstract Factory"),
						new TestVO(CarAdapterView, "Adapter"),
						new TestVO(CarListViewDecorator, "Decorator")
					]);
					
			var i:int = voCollection.length;
			var _y:int = 50;
			var btn:TestButton;
			while (i--)
			{
				btn = new TestButton(voCollection[i], onSelectHandler);
				btn.x = stage.stageWidth - 50 - btn.width;
				btn.y = _y;
				_y += btn.height + 10;
				addChild(btn);
			}
			
			container = new Sprite;
			container.x = 50;
			container.y = 50;
			addChild(container);
		}
		
		private function onSelectHandler(btn:TestButton):void 
		{
			if (selectedBtn != null)
			{
				selectedBtn.unselect();
			}
			selectedBtn = btn;
			
			while (container.numChildren)
			{
				container.removeChildAt(0);
			}
			
			container.addChild(new btn.vo.ViewClass());
		}
		
	}
	
}