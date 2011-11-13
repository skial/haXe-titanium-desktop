package titanium;
import titanium.database.DB;
/**
 * A module for dealing with Database storage.
 * @since	0.4.0
 * @example	null
*/
@:native("Titanium.Database")
extern class Database {
	public function new():Void;

	/**
	 * Open a WebKit HTML5 compatible-database, given the name of the database
	to open. WebKit HTML5 databases are stored per-security origin and are
	not available between security origins. A security origin is composed
	of a URL scheme and hostname pair.
	 * @param	name	Name of the database. The call will create the database if it does not exist.
	 * @return	DB
	 * @since	0.4.0
	 * @example	<pre><code>
		    var db = Titanium.Database.open("Users");
		    db.execute("select * from table");
		</code></pre>
		
	*/
	public function open(name:String):DB;

	/**
	 * Open a database, given a path to an sqlite file.
	 * @param	path	Path to an SQLite file to store the database in. If the file does not exist
	 * @return	DB
	 * @since	0.8.0
	*/
	public function openFile(path:String):DB;
}