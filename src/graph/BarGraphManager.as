/**
 * Created with IntelliJ IDEA.
 * User: shin
 * Date: 2014/07/27
 * Time: 12:43
 * To change this template use File | Settings | File Templates.
 */
package graph {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class BarGraphManager extends Sprite{
    private var container:Sprite;
    private var barList:Array;
    private var valueList:Array;
    private var count:uint;
    public function BarGraphManager() {
        if(stage)init(null);
        else  addEventListener(Event.ADDED_TO_STAGE, init);
    }

    private function init(event:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, init);
        //
        layout();
    }

    private function layout():void {
        var i:uint;
        var n:uint;
        var barGraph:BarGraph;
        valueList = [];
        barList = [];
        n = 10;
        for(i=0;i<n;i++)
        {
            container = new Sprite();
            addChild(container);
            barGraph = new BarGraph();
            container.addChild(barGraph);
            barGraph.y = 40*i;
            barList.push(barGraph);
            //
            barGraph.volume =  0;
            valueList.push(barGraph.volume);

        }
        //
        var timer:Timer = new Timer(1500,1);
        timer.addEventListener(TimerEvent.TIMER_COMPLETE, startTimerCompleteHandler);
        timer.start();

        addEventListener(Event.ENTER_FRAME, enterFrameHandler);
    }

    private function startTimerCompleteHandler(event:TimerEvent):void
    {
        /*
        var i:uint;
        var n:uint;
        valueList = [];
        n = barList.length;
        for(i=0;i<n;i++)
        {
            valueList.push(20 + 80 *Math.random());
        }
        */
        //
        /* */
        count = 0;
        var timer:Timer = new Timer(10,1);
        timer.addEventListener(TimerEvent.TIMER_COMPLETE, setVolueTimerCompleteHandler);
        timer.start();

    }

    private function setVolueTimerCompleteHandler(event:TimerEvent):void
    {
        setVolue();
    }
    private function  setVolue():void
    {
        var timer:Timer
        valueList[count++] = (20 + 80 *Math.random());

        if(count < barList.length)
        {
            timer = new Timer(100,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE, setVolueTimerCompleteHandler);

        }
        else
        {
            timer = new Timer(1500,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE, startTimerCompleteHandler);
        }
        timer.start();
    }

    private function enterFrameHandler(event:Event):void
    {
        var i:uint;
        var n:uint;
        var barGraph:BarGraph;
        var ax:Number;

        n = barList.length;
        for(i=0;i<n;i++)
        {
            barGraph = barList[i];
            ax = (valueList[i] - barGraph.volume) * 0.05;
            barGraph.vx += ax - 0.2 *barGraph.vx;
            barGraph.volume += barGraph.vx
        }


    }
}
}
