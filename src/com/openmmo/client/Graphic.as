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
package com.openmmo.client 
{
	import com.openmmo.client.util.Util;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Graphic 
	{
		private var _source:BitmapData = null;
		private var _class:String;
		private var _x:int;
		private var _y:int;
		
		public function Graphic(source:* = null) 
		{
			if (source is Class)
			{
				_source = Util.getBitmap(source);
				_class = String(source);
			}
			else if (source is BitmapData) _source = source;
			if (!_source) throw new Error("Invalid source image.");
		}
		
		public function get source():BitmapData 
		{
			return _source;
		}
		
		public function set source(value:BitmapData):void 
		{
			_source = value;
		}
		
		public function get x():int 
		{
			return _x;
		}
		
		public function set x(value:int):void 
		{
			_x = value;
			var temp:Bitmap = new Bitmap(_source);
			temp.x = _x;
			temp.y = _y;
			_source = temp.bitmapData;
		}
		
		public function get y():int 
		{
			return _y;
		}
		
		public function set y(value:int):void 
		{
			_y = value;
			var temp:Bitmap = new Bitmap(_source);
			temp.x = _x;
			temp.y = _y;
			_source = temp.bitmapData;
		}
		
	}

}