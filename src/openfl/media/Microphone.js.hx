package openfl.media;

import openfl.events.StatusEvent;
import openfl.events.EventDispatcher;
import openfl.media.Camera;
import js.Promise;
import js.Browser;
import js.html.VideoElement;
import js.html.MediaStream;
import js.html.MediaStreamTrack;
import js.html.AudioElement;
import js.html.CanvasRenderingContext2D;
import js.html.CanvasElement;

class Microphone extends EventDispatcher
{
    @:isVar public var gain(get, set):Float;
    @:isVar public var rate(get, set):Int;
    @:isVar public var codec(get, set):String;
    @:isVar public var framesPerPacket(get, set):Int;
    @:isVar public var encodeQuality(get, set):Int;
    @:isVar public var noiseSuppressionLevel(get, set):Int;
    @:isVar public var enableVAD(get, set):Bool;
    @:isVar public var activityLevel(get, null):Float;
    @:isVar public var index(get, null):Int;
    @:isVar public var muted(get, null):Bool;
    @:isVar public var name(get, null):String;
    @:isVar public var silenceLevel(get, null):Float;
    @:isVar public var silenceTimeout(get, null):Int;
    @:isVar public var useEchoSuppression(get, null):Bool;
    @:isVar public var soundTransform(get, set):SoundTransform;
    //@:isVar public var enhancedOptions(get, set):MicrophoneEnhancedOptions;
    @:isVar public static var names(get, null):Array<String>;
    @:isVar public static var isSupported(get, null):Bool;

    static var mediaDevices:MediaDevices;
    static var devices = new Map<String, MediaDeviceInfo>();
    var stream:MediaStream;
    var audioElement:AudioElement;

    static function __init__()
    {
        mediaDevices = Reflect.getProperty(Browser.navigator, 'mediaDevices');
        findAvailableDevices(true);
    }

    private function new(index:Int)
    {
        super();
        this.index = index;
        if (index >= 0 && index < names.length) this.name = names[index];

        audioElement = Browser.document.createAudioElement();

        //netStream = new NetStream(new NetConnection(), null);
        //netStream.__video.onloadedmetadata = function(e:Dynamic) {
        //    netStream.__video.play();
        //};
        
        findAvailableDevices(findDevice);
    }

    static function findAvailableDevices(callback:Void -> Void = null, updateNames:Bool=false)
    {
        var names:Array<String> = [];
        devices = new Map<String, MediaDeviceInfo>();

        mediaDevices.enumerateDevices().then(function(_devices:Array<MediaDeviceInfo>){
            for (device in _devices){
                if (device.kind == MediaDeviceKind.AUDIO_INPUT){
                    names.push(device.label);
                    devices.set(device.label, device);
                }// else {
                //    trace("device.label = " + device.label);
                //    trace("device = " + device);
                //}
            }
            if (updateNames) Microphone.names = names;
            if (callback != null) callback();
        });
    }

    function findDevice()
    {
        var deviceInfo:MediaDeviceInfo = null;
        if (name != null){
            deviceInfo = devices.get(name);
        }
        
        var constraints:MediaConstraints = { audio: true, video: false }; 
        if (deviceInfo != null){
            var trackConstraints:MediaTrackConstraints = {
                deviceId: { exact: deviceInfo.deviceId },
            };
            constraints.audio = trackConstraints;
        }
        
        mediaDevices.getUserMedia(constraints).then(function(stream:MediaStream) {
            this.stream = stream;
            audioElement.srcObject = stream;
            audioElement.play();
            dispatchEvent(new StatusEvent(StatusEvent.STATUS, false, false, StatusEventCode.ACTIVE));
        }).catchError(function(error:Dynamic) {
            trace(error);
        });
    }

    function set_rate(value:Int):Int
    {
        throw "this method not supported on this target yet";
        return rate = value;
    }

    function get_rate():Int
    {
        throw "this method not supported on this target yet";
        return rate;
    }

    function set_codec(value:String):String
    {
        throw "this method not supported on this target yet";
        return codec = value;
    }

    function get_codec():String
    {
        throw "this method not supported on this target yet";
        return codec;
    }

    function get_framesPerPacket():Int
    {
        throw "this method not supported on this target yet";
        return framesPerPacket;
    }

    function set_framesPerPacket(value:Int):Int
    {
        throw "this method not supported on this target yet";
        return framesPerPacket = value;
    }

    function get_encodeQuality():Int
    {
        throw "this method not supported on this target yet";
        return encodeQuality;
    }

    function set_encodeQuality(value:Int):Int
    {
        throw "this method not supported on this target yet";
        return encodeQuality = value;
    }

    function get_noiseSuppressionLevel():Int
    {
        throw "this method not supported on this target yet";
        return noiseSuppressionLevel;
    }

    function set_noiseSuppressionLevel(value:Int):Int
    {
        throw "this method not supported on this target yet";
        return noiseSuppressionLevel = value;
    }

    function get_enableVAD():Bool
    {
        throw "this method not supported on this target yet";
        return enableVAD;
    }

    function set_enableVAD(value:Bool):Bool
    {
        throw "this method not supported on this target yet";
        return enableVAD = value;
    }

    public function setSilenceLevel(silenceLevel:Float, timeout:Int = -1):Void
    {
        throw "this method not supported on this target yet";
    }

    public function setUseEchoSuppression(value:Bool):Void
    {
        throw "this method not supported on this target yet";
    }

    function get_activityLevel():Float
    {
        throw "this method not supported on this target yet";
        return activityLevel;
    }

    function get_gain():Float
    {
        throw "this method not supported on this target yet";
        return gain;
    }

    function set_gain(value:Float):Float
    {
        throw "this method not supported on this target yet";
        return gain = value;
    }

    function get_index():Int
    {
        return index;
    }

    function get_muted():Bool
    {
        throw "this method not supported on this target yet";
        return muted;
    }

    function get_name():String
    {
        return name;
    }

    function get_silenceLevel():Float
    {
        throw "this method not supported on this target yet";
        return silenceLevel;
    }

    function get_silenceTimeout():Int
    {
        throw "this method not supported on this target yet";
        return silenceTimeout;
    }

    function get_useEchoSuppression():Bool
    {
        throw "this method not supported on this target yet";
        return useEchoSuppression;
    }

    function setLoopBack(value:Bool = true):Void
    {
        throw "this method not supported on this target yet";
    }

    function get_soundTransform():SoundTransform
    {
        return soundTransform;
    }

    function set_soundTransform(value:SoundTransform):SoundTransform
    {
        soundTransform = value;
        audioElement.volume = soundTransform.volume;
        //audioElement.pan = soundTransform.pan; // pan currently not supported
        return soundTransform;
    }

    /*function get_enhancedOptions():MicrophoneEnhancedOptions
    {
        throw "this method not supported on this target yet";
        return enhancedOptions;
    }*/

    /*function set_enhancedOptions(value:MicrophoneEnhancedOptions):Void
    {
        throw "this method not supported on this target yet";
        return enhancedOptions = value;
    }*/

    public static function getMicrophone(value:Int = -1):Microphone
    {
        return new Microphone(value);
    }

    static function get_names():Array<String>
    {
        return names;
    }

    static function get_isSupported():Bool
    {
        throw "this method not supported on this target yet";
        return isSupported;
    }

    public static function getEnhancedMicrophone(value:Int = -1):Microphone
    {
        throw "this method not supported on this target yet";
        return null;
    }
}