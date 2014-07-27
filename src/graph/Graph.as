/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 12:40
 * To change this template use File | Settings | File Templates.
 */
package graph {
import flash.display.Sprite;
import flash.events.Event;

public class Graph extends Sprite{
    private var _volume:Number = 100;

    protected const MAX_VOLUME:uint = 100;
    protected var container:Sprite;
    protected var _color:uint = 0;
    protected var bar_width:Number = 400;
    protected var bar_height:Number = 40;

    public function Graph() {
        if(stage)init(null);
        else addEventListener(Event.ADDED_TO_STAGE,init);
    }
    public function start():void
    {

    }
    public  function  stop():void
    {

    }
    public function draw():void
    {

    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE,init);
        //
        layout();
    }

    protected function layout():void {
        container = new Sprite();
        addChild(container);

    }


    public function set color(value:uint):void {
        _color = value;
    }

    public function get volume():Number {
        return _volume;
    }

    public function set volume(value:Number):void {
        _volume = value;
        draw();
    }
}
}
