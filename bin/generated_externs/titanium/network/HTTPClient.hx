package titanium.network;
import titanium.filesystem.File;
import titanium.network.HTTPCookie;
/**
 * An HTTPClient which can be used as an alternative to XMLHttpRequest.
 * @since	0.3.0
 */
@:native("Titanium.Network.HTTPClient")
extern class HTTPClient {

	/**
	 * Whether an HTTPClient object is connected or not
	 * @since	0.3.0
	 */
	public static var connected:String;

	/**
	 * Amount of data received from server so far. Updated on HTTP_DATA_RECEIVED event.
	 * @since	0.7.0
	 */
	public static var dataReceived:String;

	/**
	 * Amount of data sent to server so far. Updated on HTTP_DATA_SENT event.
	 * @since	0.7.0
	 */
	public static var dataSent:String;

	/**
	 * The DONE readyState property
	 * @since	0.3.0
	 */
	public static var DONE:String;

	/**
	 * The HEADERS_RECEIVED readyState property
	 * @since	0.3.0
	 */
	public static var HEADERS_RECEIVED:String;

	/**
	 * The LOADING readyState property
	 * @since	0.3.0
	 */
	public static var LOADING:String;

	/**
	 * The handler function that will be fired as stream data is received from an HTTP request
	 * @since	0.3.0
	 */
	public static var ondatastream:String;

	/**
	 * The handler function that will be fired when request is completed
	 * @since	0.7.0
	 */
	public static var onload:String;

	/**
	 * The handler function that will be fired when the readyState code of an HTTPClient object changes.
	 * @since	0.3.0
	 */
	public static var onreadystatechange:String;

	/**
	 * The handler function that will be fired as the stream data is sent.
	 * @since	0.3.0
	 */
	public static var onsendstream:String;

	/**
	 * The OPENED readyState property
	 * @since	0.3.0
	 */
	public static var OPENED:String;

	/**
	 * The ready-state status for the connection
	 * @since	0.3.0
	 */
	public static var readyState:String;

	/**
	 * The response of an HTTP request as a Bytes. Currently this property is only valid after the request has been completed.
	 * @since	0.8.0
	 */
	public static var responseData:String;

	/**
	 * The response of an HTTP request as text
	 * @since	0.3.0
	 */
	public static var responseText:String;

	/**
	 * The response of an HTTP request as parsable XML
	 * @since	0.3.0
	 */
	public static var responseXML:String;

	/**
	 * The response status code of an HTTP request
	 * @since	0.3.0
	 */
	public static var status:String;

	/**
	 * The response status text of an HTTP Request
	 * @since	0.3.0
	 */
	public static var statusText:String;

	/**
	 * True if HTTP request timed out
	 * @since	0.7.0
	 */
	public static var timedOut:String;

	/**
	 * The UNSENT readyState property.
	 * @since	0.3.0
	 */
	public static var UNSENT:String;

	/**
	 * The request URL. This value will be updated on redirect events.
	 * @since	0.7.0
	 */
	public static var url:String;

	/**
	 * User agent string to use for requests. (Default: Titanium.userAgent)
	 * @since	0.7.0
	 */
	public static var userAgent:String;

	/**
	 * Aborts an in progress connection
	 * @return	String
	 * @since	0.3.0
	 */
	public static function abort():String;

	/**
	 * Clear any cookies set on the request
	 * @return	String
	 * @since	0.7.0
	 */
	public static function clearCookies():String;

	/**
	 * Get a HTTP cookie from the response.
	 * @param	name	name of the cookie to get
	 * @return	titanium.network.HTTPCookie
	 * @since	0.7.0
	 */
	public static function getCookie(name:String):titanium.network.HTTPCookie;

	/**
	 * Get the maximum number of redirects to follow. The default is -1, which means that there is no maximum limit to the number of redirects to follow.
	 * @return	Float
	 * @since	0.8.0
	 */
	public static function getMaxRedirects():Float;

	/**
	 * Return the value of a response header, given it's name. If the given name occurs multiple times, this method will only return one occurence.
	 * @param	name	The response header name.
	 * @return	String
	 * @since	0.3.0
	 */
	public static function getResponseHeader(name:String):String;

	/**
	 * Return all response headers as an array of two element arrays.
	 * @return	Array<Array<Dynamic>
	 * @since	0.8.0
	 */
	public static function getResponseHeaders():Array<Array<Dynamic>;

	/**
	 * Return the current timeout setting of this Network.HTTPClient
	 * object in milliseconds. Thie value may be -1 to indicate no
	 * timeout. The default timeout value is five minutes.
	 * @return	Float
	 * @since	0.8.0
	 */
	public static function getTimeout():Float;

	/**
	 * Opens an HTTP connection
	 * @param	method	The HTTP method to use e.g. POST
	 * @param	url	The url to connect to
	 * @param	asynchronous	(optional) Whether or not the request should be asynchronous (default: True)
	 * @param	username	(optional) The HTTP username to use
	 * @param	password	(optional) The HTTP password to use
	 * @return	Bool
	 * @since	0.3.0
	 */
	public static function open(method:String, url:String, ?asynchronous:Bool, ?username:String, ?password:String):Bool;

	/**
	 * Sends a request to the server and receive data with the provided handler.
	 * @param	handler	A handler to receive the response data. handler can either be Titanium.Filesystem.File or a Function.
	 * @param	data	(optional) Data to send to the server.
	 * @return	Bool
	 * @since	0.7.0
	 */
	@:overload( function receive(handler:Dynamic, ?data:Dynamic):Bool{})
	@:overload( function receive(handler:Dynamic, ?data:String):Bool{})
	public static function receive(handler:Dynamic, ?data:Void):Bool;

	/**
	 * Sends data through the HTTP connection
	 * @param	data	(optional) Data to send to the server.
	 * @return	Bool
	 * @since	0.3.0
	 */
	@:overload( function send(?data:Dynamic):Bool{})
	@:overload( function send(?data:String):Bool{})
	public static function send(?data:Void):Bool;

	/**
	 * Sends the contents of a file as body content
	 * @param	file	the File object to send
	 * @return	String
	 * @since	0.3.0
	 */
	public static function sendFile(file:titanium.filesystem.File):String;

	/**
	 * Set the basic authentication credentials
	 * @param	username	The username to use or an empty String to use none.
	 * @param	password	The password to use or an empty String to use none.
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setBasicCredentials(username:String, password:String):String;

	/**
	 * Set a HTTP cookie in the request.
	 * @param	name	the cookie name
	 * @param	value	the cookie value
	 * @return	String
	 * @since	0.7.0
	 */
	public static function setCookie(name:String, value:String):String;

	/**
	 * Set the authentication credentials for the HTTPClient.
	 * @param	username	The username to use or an empty String to use none.
	 * @param	password	The password to use or an empty String to use none.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function setCredentials(username:String, password:String):String;

	/**
	 * Set the maximum number of redirects to follow. The default is -1, which means that there is no maximum limit to the number of redirects to follow.
	 * @param	amount	the number of redirects to follow.
	 * @return	String
	 * @since	0.8.0
	 */
	public static function setMaxRedirects(amount:Float):String;

	/**
	 * Sets a request header for the connection
	 * @param	header	request header name
	 * @param	value	request header value
	 * @return	String
	 * @since	0.3.0
	 */
	public static function setRequestHeader(header:String, value:String):String;

	/**
	 * Set the timeout setting of this Network.HTTPClient.
	 * Thie value may be -1 to indicate no timeout. The default
	 * timeout value is five minutes.
	 * @param	timeout	The new timeout value in milliseconds.
	 * @return	String
	 * @since	0.4.0
	 */
	public static function setTimeout(timeout:Float):String;
}