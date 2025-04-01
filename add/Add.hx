package add;

class Add {
	/**
	 * Calculates the sum of two numbers
	 * @param x 
	 * @param y 
	 * @return The sum of `x` and `y`
	 */
	public static function add(x:Int, y:Int):Int {
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
