package com.vit.patterns 
{
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class MitsubishiPajeroHedgehog implements ICar 
	{
		
		public function MitsubishiPajeroHedgehog() 
		{
			
		}
		
		public function init():void
		{
			trace("VF >>", this, "initalized");
		}
		
		public function make():String
		{
			return "Mitsubishi";
		}
		
		public function model():String
		{
			return "Pajero";
		}
		
		public function mileage():int
		{
			return 189400;
		}
		
		public function color():String
		{
			return "Dark Blue";
		}
		
		public function year():int
		{
			return 1995;
		}
		
	}

}