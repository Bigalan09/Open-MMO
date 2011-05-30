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
package  
{
	import com.openmmo.client.entity.Entity;
	import com.openmmo.client.Graphic;
	/**
	 * 
	 * 
	 * @contributors
	 * Alan Gardner
	 * <Add your name here>
	 */
	public class Player extends Entity
	{
		[Embed(source = '../bin/images/circle.png')] private var CIRCLE:Class;
		
		public function Player() 
		{
			this.graphic = new Graphic(CIRCLE);
		}
		
		override public function update():void 
		{
			this.x = (Math.random() * 700) + 50;
			this.y = (Math.random() * 500) + 50;
		}
	}

}