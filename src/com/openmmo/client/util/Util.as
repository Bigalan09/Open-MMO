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
package com.openmmo.client.util 
{
	import com.openmmo.client.Graphic;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Util 
	{
		private static var _bitmap:Object = { };
		private var _class:String;
		
		public function Util() 
		{
			
		}
		
		public static function getBitmap(source:Class):BitmapData
		{
			if (_bitmap[String(source)]) return _bitmap[String(source)];
			return (_bitmap[String(source)] = (new source).bitmapData);
		}
		
		static public function spriteToBitmapData(sprite:Sprite):BitmapData
		{
			var b:BitmapData = new BitmapData(sprite.width, sprite.height, true, 0x0);
			b.draw(sprite);
			if (_bitmap[String(sprite)]) return _bitmap[String(sprite)];
			return (_bitmap[String(sprite)] = b);
		}
		
		static public function createBox(x:int, y:int, width:int, height:int, colour:uint = 0x333333, alpha:uint = 1):Sprite
		{
			var temp:Sprite = new Sprite();
			var gr:Graphics = temp.graphics;
			
			gr.lineStyle(1);
			gr.beginFill(colour, alpha);
			gr.drawRect(x, y, width, height);
			gr.endFill();
			
			return temp;
		}
		
	}

}