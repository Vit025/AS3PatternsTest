package com.vit.patterns 
{
	/**
	 * ...
	 * @author Vitaly Filinov @ TELEFISION TEAM
	 */
	public class MitsubishiPajeroWagon implements ICar 
	{
		
		public function MitsubishiPajeroWagon() 
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
			return 87800;
		}
		
		public function color():String
		{
			return "Champagne";
		}
		
		public function year():int
		{
			return 2009;
		}
		
	}

}