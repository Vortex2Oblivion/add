package add;

import haxe.Rest;

class Add {
	/**
	 * Calculates the sum of two numbers
	 * @param x 
	 * @param y 
	 * @return The sum of `x` and `y`
	 */

	public static function add(x:Int, y:Rest<Int>):Int {
		var i:Int = 0;
		var ret:Int = x;
		while (i < y.length) {
			ret = _add(ret, y[i]);
			i++;
		}
		return ret;
	}

	private static function _add(x:Int, y:Int):Int {
		var a:Int;
		var b:Int;
		do {
			a = x & y;
			b = x ^ y;
			x = a << 1;
			y = b;
		} while (a > 0);
		return b;
	}
}
