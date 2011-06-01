/*
	This file is part of OpenMMO.

    OpenMMO is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    OpenMMO is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with OpenMMO.  If not, see <http://www.gnu.org/licenses/>.
	
*/
package com.openmmo.client.entity 
{
	import com.openmmo.client.Graphic;
	import com.openmmo.client.util.Util;
	import flash.display.Graphics;
	import flash.display.Sprite;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Map extends Entity
	{
		private var _mapType:String;
		private var _map:Sprite = new Sprite();
		private var _fullscreen:Boolean;
		private var _rows:uint;
		private var _cols:uint;
		
		public static const STAGGERED:String = "staggered";
		public static const DIAMOND:String = "diamond";
		public static const NONE:String = "none";
		
		public function Map(fullscreen:Boolean = true, rows:uint = 10, cols:uint = 10) 
		{
			this.type = "map";
			this._fullscreen = fullscreen;
			this._rows = rows;
			this._cols = cols;
		}
		
		private function createMap(mapType:String):void
		{
			var gr:Graphics = this._map.graphics;
			gr.lineStyle(1, 0x0);
			gr.beginFill(0x4466dd, 0.5);
			gr.drawRect(0, 0, 100, 200);
			gr.endFill();
			
			this.graphic = new Graphic(Util.spriteToBitmapData(this._map));
		}
		
		public function get mapType():String 
		{
			return _mapType;
		}
		
		public function set mapType(value:String):void 
		{
			_mapType = value;
			createMap(value);
		}
		
	}

}