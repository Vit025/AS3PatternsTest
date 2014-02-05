package com.vit.patterns 
{
	import com.vit.patterns.state.ISimpleButtonState;
	import com.vit.patterns.state.SimpleButtonDownSelectedState;
	import com.vit.patterns.state.SimpleButtonDownState;
	import com.vit.patterns.state.SimpleButtonOverSelectedState;
	import com.vit.patterns.state.SimpleButtonOverState;
	import com.vit.patterns.state.SimpleButtonSelectedState;
	import com.vit.patterns.state.SimpleButtonUpState;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class TestButton extends Sprite 
	{
		private var _vo:TestVO;
		private var state:ISimpleButtonState;
		private var selected:Boolean = false;
		private var isOver:Boolean = false;
		private var label:TextField;
		
		private var upState:ISimpleButtonState;
		private var overState:ISimpleButtonState;
		private var overSelectedState:ISimpleButtonState;
		private var downState:ISimpleButtonState;
		private var downSelectedState:ISimpleButtonState;
		private var selectedState:ISimpleButtonState;
		
		private var onSelectHandler:Function;
		
		public function TestButton(_vo:TestVO, _onSelectHandler:Function) 
		{
			this._vo = _vo;
			onSelectHandler = _onSelectHandler;
			
			setUpState();
			
			addEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
			addEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
			addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
			
			var format:TextFormat = new TextFormat("Tahoma", 14, 0xFFFFFF, true);
			
			label = new TextField();
			label.defaultTextFormat = format;
			label.autoSize = TextFieldAutoSize.LEFT;
			label.text = vo.label;
			
			var _n:Number = (width - label.width) >> 1;
			label.x = (_n > 0)? (_n + .5) >> 0 : (_n - .5) >> 0;
			
			_n = (height - label.height) >> 1;
			label.y = (_n > 0)? (_n + .5) >> 0 : (_n - .5) >> 0;
			
			addChild(label);
			
			mouseChildren = false;
			useHandCursor = true;
			buttonMode = true;
		}
		
		private function rollOverHandler(e:MouseEvent):void 
		{
			isOver = true;
			
			if (selected)
			{
				setOverSelectedState();
			}
			else
			{
				setOverState();
			}
		}
		
		private function rollOutHandler(e:MouseEvent):void 
		{
			isOver = false;
			
			if (selected)
			{
				setSelectedState();
			}
			else
			{
				setUpState();
			}
		}
		
		private function mouseDownHandler(e:MouseEvent):void 
		{
			selected = !selected;
			
			if (selected)
			{
				setDownSelectedState();
				onSelectHandler(this);
			}
			else
			{
				setDownState();
			}
		}
		
		private function mouseUpHandler(e:MouseEvent = null):void 
		{
			if (isOver)
			{
				if (selected)
				{
					setOverSelectedState();
				}
				else
				{
					setOverState();
				}
			}
			else
			{
				if (selected)
				{
					setSelectedState();
				}
				else
				{
					setUpState();
				}
			}
		}
		
		private function setState(newState:ISimpleButtonState):void
		{
			state = newState;
			state.display();
		}
		
		public function unselect():void
		{
			selected = false;
			mouseUpHandler();
		}
		
		public function dispose():void
		{
			removeEventListener(MouseEvent.ROLL_OVER, rollOverHandler);
			removeEventListener(MouseEvent.ROLL_OUT, rollOutHandler);
			removeEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			removeEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
			
			upState.dispose();
			upState = null;
			
			overState.dispose();
			overState = null;
			
			overSelectedState.dispose();
			overSelectedState = null;
			
			downState.dispose();
			downState = null;
			
			downSelectedState.dispose();
			downSelectedState = null;
			
			selectedState.dispose();
			selectedState = null;
			
			_vo = null;
			onSelectHandler = null;
		}
		
		public function get vo():TestVO 
		{
			return _vo;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////
		//{	>>>>>>	STATES
		//////////////////////////////////////////////////////////////////////////////////////////////////
		
		private function setUpState():void
		{
			upState ||= new SimpleButtonUpState(this);
			setState(upState);
		}
		
		private function setOverState():void
		{
			overState ||= new SimpleButtonOverState(this);
			setState(overState);
		}
		
		private function setOverSelectedState():void
		{
			overSelectedState ||= new SimpleButtonOverSelectedState(this);
			setState(overSelectedState);
		}
		
		private function setDownState():void
		{
			downState ||= new SimpleButtonDownState(this);
			setState(downState);
		}
		
		private function setDownSelectedState():void
		{
			downSelectedState ||= new SimpleButtonDownSelectedState(this);
			setState(downSelectedState);
		}
		
		private function setSelectedState():void
		{
			selectedState ||= new SimpleButtonSelectedState(this);
			setState(selectedState);
		}
		
	}

}