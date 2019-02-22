package flash.media;

//import flash.events.*;

class Microphone extends EventDispatcher
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

    private function new()
    {
        super();
    }

    public function set_gain(value:Float):Void
    {
        throw "this method is untested";
        return gain = value;
    }

    public function set_rate(value:Int):Void
    {
        throw "this method is untested";
        return rate = value;
    }

    public function get_rate():Int
    {
        throw "this method is untested";
        return rate;
    }

    public function set_codec(value:String):Void
    {
        throw "this method is untested";
        return codec = value;
    }

    public function get_codec():String
    {
        throw "this method is untested";
        return codec;
    }

    public function get_framesPerPacket():Int
    {
        throw "this method is untested";
        return framesPerPacket;
    }

    public function set_framesPerPacket(value:Int):Void
    {
        throw "this method is untested";
        return framesPerPacket = value;
    }

    public function get_encodeQuality():Int
    {
        throw "this method is untested";
        return encodeQuality;
    }

    public function set_encodeQuality(value:Int):Void
    {
        throw "this method is untested";
        return encodeQuality = value;
    }

    public function get_noiseSuppressionLevel():Int
    {
        throw "this method is untested";
        return noiseSuppressionLevel;
    }

    public function set_noiseSuppressionLevel(value:Int):Void
    {
        throw "this method is untested";
        return noiseSuppressionLevel = value;
    }

    public function get_enableVAD():Bool
    {
        throw "this method is untested";
        return enableVAD;
    }

    public function set_enableVAD(value:Bool):Void
    {
        throw "this method is untested";
        return enableVAD = value;
    }

    public function setSilenceLevel(silenceLevel:Float, timeout:Int = -1):Void
    {
        throw "this method is untested";
        return null;
    }

    public function setUseEchoSuppression(value:Bool):Void
    {
        throw "this method is untested";
        return null;
    }

    public function get_activityLevel():Float
    {
        throw "this method is untested";
        return activityLevel;
    }

    public function get_gain():Float
    {
        throw "this method is untested";
        return gain;
    }

    public function get_index():Int
    {
        throw "this method is untested";
        return index;
    }

    public function get_muted():Bool
    {
        throw "this method is untested";
        return muted;
    }

    public function get_name():String
    {
        throw "this method is untested";
        return name;
    }

    public function get_silenceLevel():Float
    {
        throw "this method is untested";
        return silenceLevel;
    }

    public function get_silenceTimeout():Int
    {
        throw "this method is untested";
        return silenceTimeout;
    }

    public function get_useEchoSuppression():Bool
    {
        throw "this method is untested";
        return useEchoSuppression;
    }

    public function setLoopBack(value:Bool = true):Void
    {
        throw "this method is untested";
        return null;
    }

    public function get_soundTransform():SoundTransform
    {
        throw "this method is untested";
        return soundTransform;
    }

    public function set_soundTransform(value:SoundTransform):Void
    {
        throw "this method is untested";
        return soundTransform = value;
    }

    public function get_enhancedOptions():MicrophoneEnhancedOptions
    {
        throw "this method is untested";
        return enhancedOptions;
    }

    public function set_enhancedOptions(value:MicrophoneEnhancedOptions):Void
    {
        throw "this method is untested";
        return enhancedOptions = value;
    }

    public static function getMicrophone(value:Int = -1):Microphone
    {
        throw "this method is untested";
        return null;
    }

    public static function get_names():Array<String>
    {
        throw "this method is untested";
        return names;
    }

    public static function get_isSupported():Bool
    {
        throw "this method is untested";
        return isSupported;
    }

    public static function getEnhancedMicrophone(value:Int = -1):Microphone
    {
        throw "this method is untested";
        return null;
    }
}