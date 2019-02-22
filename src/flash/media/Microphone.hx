package flash.media; #if flash

//import flash.events.*;

extern class Microphone extends EventDispatcher
{
    @:isVar public var gain(null, set):Float;
    @:isVar public var rate(get, set):Int;
    @:isVar public var codec(get, set):String;
    @:isVar public var framesPerPacket(get, set):Int;
    @:isVar public var encodeQuality(get, set):Int;
    @:isVar public var noiseSuppressionLevel(get, set):Int;
    @:isVar public var enableVAD(get, set):Bool;
    @:isVar public var activityLevel(get, null):Float;
    @:isVar public var gain(get, null):Float;
    @:isVar public var index(get, null):Int;
    @:isVar public var muted(get, null):Bool;
    @:isVar public var name(get, null):String;
    @:isVar public var silenceLevel(get, null):Float;
    @:isVar public var silenceTimeout(get, null):Int;
    @:isVar public var useEchoSuppression(get, null):Bool;
    @:isVar public var soundTransform(get, set):SoundTransform;
    @:isVar public var enhancedOptions(get, set):MicrophoneEnhancedOptions;
    @:isVar public static var names(get, null):Array<String>;
    @:isVar public static var isSupported(get, null):Bool;

    private function new();

    function set_gain(value:Float):Void;
    function set_rate(value:Int):Void;
    function get_rate():Int;
    function set_codec(value:String):Void;
    function get_codec():String;
    function get_framesPerPacket():Int;
    function set_framesPerPacket(value:Int):Void;
    function get_encodeQuality():Int;
    function set_encodeQuality(value:Int):Void;
    function get_noiseSuppressionLevel():Int;
    function set_noiseSuppressionLevel(value:Int):Void;
    function get_enableVAD():Bool;
    function set_enableVAD(value:Bool):Void;
    public function setSilenceLevel(silenceLevel:Float, timeout:Int = -1):Void;
    public function setUseEchoSuppression(value:Bool):Void;
    function get_activityLevel():Float;
    function get_gain():Float;
    function get_index():Int;
    function get_muted():Bool;
    function get_name():String;
    function get_silenceLevel():Float;
    function get_silenceTimeout():Int;
    function get_useEchoSuppression():Bool;
    public function setLoopBack(value:Bool = true):Void;
    function get_soundTransform():SoundTransform;
    function set_soundTransform(value:SoundTransform):Void;
    function get_enhancedOptions():MicrophoneEnhancedOptions;
    function set_enhancedOptions(value:MicrophoneEnhancedOptions):Void;
    public static function getMicrophone(value:Int = -1):Microphone;
    public static function get_names():Array<String>;
    public static function get_isSupported():Bool;
    public static function getEnhancedMicrophone(value:Int = -1):Microphone;
}

#else
typedef Microphone = openfl.media.Microphone;
#end