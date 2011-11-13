package titanium.filesystem;
/**
 * A representation of an asynchronous copy operation created via calling Filesystem.asyncCopy.
 * @since	0.2.0
 * @example	null
*/
@:native("Titanium.Filesystem.AsyncCopy")
extern class AsyncCopy {

	/**
	 * True if this asynchronous copy operation is active, false otherwise.
	 * @since	0.3.0
	*/
	public var running:Bool;
	public function new():Void;
}