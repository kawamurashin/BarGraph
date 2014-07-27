/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 12:43
 * To change this template use File | Settings | File Templates.
 */
package graph {
import flash.display.Graphics;

public class BarGraph extends Graph{
    public var vx:Number = 0;
    public function BarGraph() {
    }
    override protected function layout():void
    {
        super.layout();

    }
    override public function draw():void
    {
        super.draw();
        var g:Graphics = container.graphics;
        g.clear();
        g.beginFill(_color);

        var value:int = volume * 10;
        var max_value:uint = MAX_VOLUME * 10;
        if(value > max_value)
        {
            value = max_value;
        }
        else if(value < 0)
        {
            value = 0;
        }

        if(volume == 0)
        {

        }
        else
        {
            g.drawRect(0 ,0 ,bar_width * value / max_value ,bar_height);

        }
    }

}
}
