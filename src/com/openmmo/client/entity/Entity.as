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
	import com.openmmo.client.util.Position;
	import com.openmmo.client.World;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Entity
	{
		private var _id:String = "";
		private var _position:Position = new Position(0, 0, 0, 0);
		private var _world:World = null;
		private var _graphic:Graphic = null;
		
		public function Entity() 
		{
			
		}
		
		public function update():void 
		{
			
		}
		
		public function get id():String 
		{
			return this._id;
		}
		
		public function set id(value:String):void 
		{
			this._id = value;
		}
		
		public function get position():Position 
		{
			return this._position;
		}
		
		public function set position(value:Position):void 
		{
			this._position = value;
		}
		
		public function get world():World 
		{
			return this._world;
		}
		
		public function set world(value:World):void 
		{
			this._world = value;
		}
		
		public function get x():int 
		{
			return this._position.x;
		}
		
		public function get y():int 
		{
			return this._position.y;
		}
		
		public function get z():int 
		{
			return this._position.z;
		}
		
		public function set x(value:int):void
		{
			this._position.x = value;
			if (this._graphic) this.graphic.x = value;
		}
		
		public function set y(value:int):void
		{
			this._position.y = value;
			if (this._graphic) this.graphic.y = value;
		}
		
		public function set z(value:int):void 
		{
			this._position.z = value;
		}
		
		public function get graphic():Graphic 
		{
			return _graphic;
		}
		
		public function set graphic(value:Graphic):void 
		{
			if (_graphic == value) return;
			_graphic = value;
		}
		
	}

}