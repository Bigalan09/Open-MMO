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
	import flash.display.BitmapData;
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
		
	}

}