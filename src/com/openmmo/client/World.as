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
	import com.openmmo.client.entity.Entity;
	import com.openmmo.client.entity.Map;
	import com.openmmo.client.util.Position;
	import flash.display.Bitmap;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class World 
	{
		private var _game:Game = null;
		private var _entities:Vector.<Entity> = new Vector.<Entity>();
		
		public function World(game:Game) 
		{
			this._game = game;
		}
		
		public function get game():Game 
		{
			return _game;
		}
		
		public function set game(value:Game):void 
		{
			_game = value;
		}
		
		public function addEntity(ent:Entity):void 
		{
			if (searchEntity(ent) < 0)
			{
				this._entities.push(ent);
				ent.world = this;
				
				if (ent.type == "map") (ent as Map).mapType = this._game.perspective;
				if (ent.graphic) this._game.addChild(ent.graphic.bitmap);
			}
		}
		
		public function removeEntity(ent:Entity):void 
		{
			var index:int = searchEntity(ent);
			if (index >= 0)
			{
				this._entities.splice(index, 1);
			}
		}
		
		public function searchEntity(ent:Entity):int
		{
			for (var i:int = 0; i < this._entities.length; i++)
			{
				var tempEnt:Entity = this._entities[i];
				if (tempEnt == ent)
				{
					return i;
				}
			}
			
			return -1;
		}
		
		public function getEntityAt(x:int, y:int, z:int):Entity
		{
			for (var i:int = 0; i < this._entities.length; i++)
			{
				var tempEnt:Entity = this._entities[i];
				if (tempEnt.x == x && tempEnt.y == y && tempEnt.z == z)
				{
					return tempEnt;
				}
			}
			return null;
		}
		
		public function getEntityAtPos(position:Position):Entity
		{
			return getEntityAt(position.x, position.y, position.z);
		}
		
		public function render():void 
		{
			for (var i:int = 0; i < this._entities.length; i++)
			{
				var temp:Bitmap = this._entities[i].graphic.bitmap;
				temp.x = this._entities[i].x;
				temp.y = this._entities[i].y;
			}
		}
		
		public function update():void 
		{
			for (var i:int = 0; i < this._entities.length; i++)
			{
				this._entities[i].update();
			}
		}
		
	}

}