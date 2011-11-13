package titanium;
/**
 * A module for serializing and deserializing JSON.
 * @since	0.4.0
 * @example	null
*/
@:native("Titanium.JSON")
extern class JSON {
	public function new():Void;

	/**
	 * Deserialize a JSON string into a JavaScript value.
	 * @param	jsonString	JSON string to deserialize into a JavaScript object.
	 * @return	Dynamic
	 * @since	0.4.0
	*/
	public function parse(jsonString:String):Dynamic;

	/**
	 * Serialize a JavaScript value into a JSON string.
	 * @param	value	The JavaScript value to serialize into a JSON string.
	 * @return	String
	 * @since	0.4.0
	*/
	public function stringify(value:Dynamic):String;
}