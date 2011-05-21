package com.openmmo.client 
{
	import flash.display.Sprite;
	
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Game extends Sprite 
	{
		public static const ISOMETRIC:String = "iso";
		public static const SIDE_VIEW:String = "side";
		public static const TOP_DOWN:String = "top";
		
		private var _perspective:String = null;
		
		public function Game(perspective:String) 
		{
			this._perspective = perspective;
		}
		
	}

}